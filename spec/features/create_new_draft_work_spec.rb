# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Create a new work in a deposited collection', js: true do
  let(:user) { create(:user) }
  let(:collection_version) { create(:collection_version, :deposited, collection:) }
  let(:collection) { create(:collection, :depositor_selects_access, depositors: [user]) }
  let(:second_email) { 'second@example.com' }

  before do
    collection.update(head: collection_version)
    sign_in user, groups: ['dlss:hydrus-app-collection-creators']
    allow(Settings).to receive(:allow_sdr_content_changes).and_return(true)
  end

  it 'creates a draft and renders work show page' do
    visit dashboard_path

    click_button '+ Deposit to this collection'

    expect(page).to have_content 'What type of content will you deposit?'

    find('label', text: 'Sound').click

    click_button 'Continue'

    fill_in 'Title of deposit', with: 'My Draft'

    click_button 'Save as draft'

    expect(page).to have_content 'My Draft'
    expect(page).to have_content 'Draft - Not deposited'
    expect(page).to have_content WorkVersion::LINK_TEXT.to_s
    expect(page).to have_content WorkVersion::DOI_TEXT.to_s
  end

  context 'when collection does not allow DOI assignment' do
    let(:collection) { create(:collection, doi_option: 'no', depositors: [user]) }

    it 'does not show DOI placeholder text' do
      visit dashboard_path

      click_button '+ Deposit to this collection'

      expect(page).to have_content 'What type of content will you deposit?'

      find('label', text: 'Sound').click

      click_button 'Continue'

      fill_in 'Title of deposit', with: 'My Draft'

      click_button 'Save as draft'

      expect(page).to have_content 'My Draft'
      expect(page).to have_content 'Draft - Not deposited'
      expect(page).to have_content WorkVersion::LINK_TEXT
      expect(page).not_to have_content WorkVersion::DOI_TEXT
    end
  end
end
