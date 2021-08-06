# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Dashboard collection requests' do
  let(:user) { create(:user) }

  context 'when user has in progress deposits in different states' do
    let(:user) { collection.depositors.first }
    let(:collection) { create(:collection, :with_depositors, depositor_count: 1) }
    let(:work1) { create(:work, depositor: user, collection: collection) }
    let(:work_version1) { create(:work_version, state: 'first_draft', title: 'I am a first draft', work: work1) }
    let(:work2) { create(:work, depositor: user, collection: collection) }
    let(:work_version2) { create(:work_version, state: 'version_draft', title: 'I am a version draft', work: work2) }
    let(:work3) { create(:work, depositor: user, collection: collection) }
    let(:work_version3) { create(:work_version, state: 'rejected', title: 'I am rejected', work: work3) }
    let(:work4) { create(:work, depositor: user, collection: collection) }
    let(:work_version4) { create(:work_version, state: 'deposited', title: 'I am deposited', work: work4) }
    let(:work5) { create(:work, depositor: user, collection: collection) }
    let(:work_version5) { create(:work_version, state: 'depositing', title: 'I am depositing', work: work5) }
    let(:work6) { create(:work, depositor: user, collection: collection) }
    let(:work_version6) do
      create(:work_version, state: 'pending_approval', title: 'I am a pending approval', work: work6)
    end

    before do
      create(:collection_version_with_collection, collection: collection)

      work1.update(head: work_version1)
      work2.update(head: work_version2)
      work3.update(head: work_version3)
      work4.update(head: work_version4)
      work5.update(head: work_version5)
      work6.update(head: work_version6)

      sign_in user
    end

    it 'shows draft and rejected deposits as being in progress' do
      get "/collections/#{collection.id}/dashboard"

      expect(response).to be_successful

      expect(response.body).to include('I am deposited')
      expect(response.body).to include('I am depositing')
      expect(response.body).to include('See all deposits')
      expect(response.body).not_to include('I am pending approval')
    end
  end
end
