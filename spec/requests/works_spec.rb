# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Works requests' do
  let(:work) { create(:work) }
  let(:collection) { create(:collection) }

  before do
    allow(Settings).to receive(:allow_sdr_content_changes).and_return(true)
  end

  context 'with unauthenticated user' do
    before do
      sign_out
    end

    it 'redirects from /collections/:collection_id/works/new to login URL' do
      get "/collections/#{collection.id}/works/new"
      expect(response).to have_http_status(:found)
      expect(response).to redirect_to(new_user_session_path)
    end

    it 'allows GETs to /works/:work_id' do
      get "/works/#{work.id}"
      expect(response).to have_http_status(:ok)
    end
  end

  context 'with an authenticated user' do
    let(:user) { create(:user) }

    before do
      sign_in user
    end

    describe 'show a work' do
      it 'displays the work' do
        get "/works/#{work.id}"
        expect(response).to have_http_status(:ok)
      end
    end

    describe 'new work form' do
      let(:collection) { create(:collection, depositors: [user]) }

      it 'renders the form' do
        get "/collections/#{collection.id}/works/new?work_type=video"
        expect(response).to have_http_status(:ok)
        expect(response.body).to include 'video'
      end
    end

    context 'when Settings.allow_sdr_content_changes is' do
      let(:alert_text) { 'Creating/Updating SDR content (i.e. collections or works) is not yet available.' }
      let(:collection) { create(:collection, depositors: [user]) }

      it 'false, it redirects and displays alert' do
        allow(Settings).to receive(:allow_sdr_content_changes).and_return(false)
        get "/collections/#{collection.id}/works/new?work_type=text"
        expect(response).to redirect_to(:root)
        follow_redirect!
        expect(response).to be_successful
        expect(response.body).to include alert_text
      end

      it 'true, it does NOT display alert' do
        get "/collections/#{collection.id}/works/new?work_type=other"
        expect(response).to be_successful
        expect(response.body).not_to include alert_text
      end
    end

    describe 'create work with everything' do
      let(:collection) { create(:collection, depositors: [user]) }

      let(:contributors) do
        { '0' =>
          { '_destroy' => '1', 'first_name' => 'Justin',
            'last_name' => 'Coyne', 'role_term' => 'person|Collector' },
          '999' =>
          { '_destroy' => 'false', 'first_name' => 'Naomi',
            'last_name' => 'Dushay', 'role_term' => 'person|Author' },
          '1002' =>
          { '_destroy' => 'false', 'first_name' => 'Vivian',
            'last_name' => 'Wong', 'role_term' => 'person|Contributing author' } }
      end

      let(:upload1) do
        ActiveStorage::Blob.create_after_upload!(
          io: File.open(Rails.root.join('public/apple-touch-icon.png')),
          filename: 'apple-touch-icon.png',
          content_type: 'image/png'
        )
      end

      let(:upload2) do
        ActiveStorage::Blob.create_after_upload!(
          io: File.open(Rails.root.join('spec/fixtures/files/favicon.ico')),
          filename: 'favicon.ico',
          content_type: 'image/vnd.microsoft.icon'
        )
      end

      let(:upload3) do
        ActiveStorage::Blob.create_after_upload!(
          io: File.open(Rails.root.join('spec/fixtures/files/sul.svg')),
          filename: 'sul.svg',
          content_type: 'image/svg+xml'
        )
      end

      let(:files) do
        {
          '0' => {
            '_destroy' => '1',
            'label' => 'Wrong ICO',
            'file' => upload1.signed_id
          },
          '999' => {
            '_destroy' => 'false',
            'label' => 'My ICO',
            'hide' => false,
            'file' => upload2.signed_id
          },
          '1002' => {
            '_destroy' => 'false',
            'label' => 'My SVG',
            'hide' => false,
            'file' => upload3.signed_id
          }
        }
      end

      let(:keywords) do
        { '0' =>
          { '_destroy' => 'false', 'label' => 'Feminism',
            'uri' => 'http://id.worldcat.org/fast/922671' },
          '999' =>
          { '_destroy' => '1', 'label' => 'My PNG',
            'uri' => '' },
          '1002' =>
          { '_destroy' => 'false', 'label' => 'Freeform keyword',
            'uri' => '' } }
      end
      let(:embargo_year) { Time.zone.today.year + 1 }

      let(:work_params) do
        attributes_for(:work)
          .merge(contributors_attributes: contributors,
                 attached_files_attributes: files,
                 keywords_attributes: keywords,
                 'published(1i)' => '2020', 'published(2i)' => '2', 'published(3i)' => '14',
                 creation_type: 'range',
                 'created(1i)' => '2020', 'created(2i)' => '2', 'created(3i)' => '14',
                 'created_range(1i)' => '2020', 'created_range(2i)' => '3', 'created_range(3i)' => '4',
                 'created_range(4i)' => '2020', 'created_range(5i)' => '10', 'created_range(6i)' => '31',
                 'release' => 'embargo',
                 'embargo_date(1i)' => embargo_year, 'embargo_date(2i)' => '4', 'embargo_date(3i)' => '4')
      end

      it 'displays the work' do
        post "/collections/#{collection.id}/works", params: { work: work_params }
        expect(response).to have_http_status(:found)
        work = Work.last
        expect(work.contributors.size).to eq 2
        expect(work.attached_files.size).to eq 2
        expect(work.keywords.size).to eq 2
        expect(work.published_edtf).to eq '2020-02-14'
        expect(work.created_edtf).to eq '2020-03-04/2020-10-31'
        expect(work.embargo_date).to eq Date.parse("#{embargo_year}-04-04")
        expect(work.subtype).to eq ['3D model', 'GIS']
      end
    end

    describe 'create work with a minimal set' do
      let(:collection) { create(:collection, depositors: [user]) }
      let(:work_params) do
        {
          title: 'Test title',
          work_type: 'text',
          contact_email: 'io@io.io',
          abstract: 'test abstract',
          keywords_attributes: {
            '0' => { '_destroy' => 'false', 'label' => 'Feminism', 'uri' => 'http://id.worldcat.org/fast/922671' }
          },
          license: 'CC0-1.0',
          release: 'immediate'
        }
      end

      it 'displays the work' do
        post "/collections/#{collection.id}/works", params: { work: work_params }
        expect(response).to have_http_status(:found)
        work = Work.last
        expect(work.contributors).to be_empty
        expect(work.attached_files).to be_empty
        expect(work.keywords.size).to eq 1
        expect(work.published_edtf).to be_nil
        expect(work.created_edtf).to be_nil
        expect(work.embargo_date).to be_nil
        expect(work.subtype).to be_empty
      end
    end
  end
end
