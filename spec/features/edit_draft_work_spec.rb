# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Edit a draft work', js: true do
  let(:work) { create(:work, :with_keywords, :with_attached_file, work_type: 'other', subtype: ['Graphic novel']) }
  let(:user) { work.depositor }

  before do
    sign_in user
  end

  context 'when successful deposit' do
    it 'deposits and renders work show page' do
      visit dashboard_path

      click_link work.title

      expect(page).to have_content work.title

      # TODO: we should be able to remove this once accepting is persisted.
      # See https://github.com/sul-dlss/happy-heron/issues/243
      check 'I agree to the SDR Terms of Deposit'

      expect(page).to have_content(work.attached_files.first.filename.to_s)
      # File removal should not raise an error
      find('button.dz-remove').click

      # Test validation
      fill_in 'Other', with: ''
      click_button 'Deposit'
      expect(page).to have_content("You must provide a subtype for works of type 'Other'")
      # End of validation testing

      # breadcrumbs showing
      find('#breadcrumbs') do |nav|
        expect(nav).to have_content('Dashboard')
        expect(nav).to have_content(work.collection.name)
        expect(nav).to have_content(work.title)
        expect(nav).to have_content('Edit')
      end

      fill_in 'Other', with: 'Comic book'
      click_button 'Deposit'

      expect(page).to have_content('Test title')
      # Attached file should now be gone
      expect(page).not_to have_content(work.attached_files.first.filename.to_s)
    end
  end
end
