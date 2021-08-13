# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Create a new collection', js: true do
  let(:user) { create(:user) }

  before do
    sign_in user, groups: ['dlss:hydrus-app-collection-creators']
  end

  context 'when successful deposit' do
    let(:collection_version_attrs) { attributes_for(:collection_version) }
    let(:name) { collection_version_attrs.fetch(:name) }

    it 'deposits and renders work show page' do
      visit dashboard_path

      click_link '+ Create a new collection'

      fill_in 'Collection name', with: name
      fill_in 'Description', with: collection_version_attrs.fetch(:description)
      fill_in 'Contact email', with: 'test@example.edu'
      check 'Send email to Collection Managers and Reviewers when participants are added/removed.'

      select 'Apache-2.0', from: 'collection_required_license'

      expect(page).to have_content('Send email to Depositors whose status has changed.')

      check 'Enable Review Workflow'
      click_button '+ Add another reviewer'
      find_field 'lookup SunetID'

      # breadcrumbs showing
      find('#breadcrumbs') do |nav|
        expect(nav).to have_content('Dashboard')
        expect(nav).to have_content('New collection')
      end

      click_button 'Deposit'

      expect(page).to have_content name
      expect(page).to have_content('Depositing')

      # Simulate the deposit process
      collection_version = CollectionVersion.last
      collection_version.collection.update!(druid: 'druid:dc224fz4940')
      collection_version.deposit_complete!

      # This link appears when depositing is complete
      click_link "Edit #{name}"
      expect(page).not_to have_content('Depositing')

      # Cancel editing to confirm we get back to the collection settings view page
      click_link 'Cancel'
      expect(page).to have_current_path(collection_path(collection_version.collection))

      # now visit the edit details page, and Cancel editing to confirm we return to the collection details view page
      visit edit_collection_version_path(collection_version)
      click_link 'Cancel'
      expect(page).to have_current_path(collection_version_path(collection_version))
    end

    it 'shows a confirmation if you cancel the collection deposit and goes back if confirmed' do
      visit dashboard_path

      click_link '+ Create a new collection'
      fill_in 'Collection name', with: collection_version_attrs.fetch(:name)

      accept_confirm do
        click_link 'Cancel'
      end

      expect(page).to have_current_path(dashboard_path)
    end

    it 'shows a confirmation if you cancel the collection deposit and stays on the page if not confirmed' do
      visit dashboard_path

      click_link '+ Create a new collection'
      fill_in 'Collection name', with: collection_version_attrs.fetch(:name)

      dismiss_confirm do
        click_link 'Cancel'
      end

      expect(page).to have_current_path(new_first_draft_collection_path)
    end
  end
end
