# typed: false
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

      find_field 'Additional Reviewers', disabled: true
      check 'Enable Review Workflow'
      find_field 'Additional Reviewers'

      # breadcrumbs showing
      find('#breadcrumbs') do |nav|
        expect(nav).to have_content('Dashboard')
        expect(nav).to have_content('New collection')
      end

      click_button 'Deposit'

      expect(page).to have_content name
      expect(page).to have_content('Depositing')

      # Simulate the deposit process
      CollectionVersion.last.tap do |version|
        version.collection.update!(druid: 'druid:dc224fz4940')
        version.deposit_complete!
      end

      # This link appears when depositing is complete
      click_link "Edit #{name}"
      expect(page).not_to have_content('Depositing')
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
