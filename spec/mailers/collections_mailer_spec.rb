# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CollectionsMailer, type: :mailer do
  describe '#invitation_to_deposit_email' do
    let(:user) { collection.depositors.first }
    let(:mail) { described_class.with(user: user, collection: collection).invitation_to_deposit_email }
    let(:collection) { build_stubbed(:collection, :with_depositors) }

    it 'renders the headers' do
      expect(mail.subject).to eq "Invitation to deposit to the #{collection.name} collection in the SDR"
      expect(mail.to).to eq [user.email]
      expect(mail.from).to eq ['no-reply@sdr.stanford.edu']
    end

    it 'renders the body' do
      expect(mail.body.encoded).to match("You have been invited to deposit to the #{collection.name} collection")
    end
  end

  describe '#deposit_access_removed_email' do
    let(:user) { build(:user) }
    let(:mail) { described_class.with(user: user, collection: collection).deposit_access_removed_email }
    let(:collection) { build(:collection) }

    it 'renders the headers' do
      expect(mail.subject).to eq "Your Depositor permissions for the #{collection.name} " \
        'collection in the SDR have been removed'
      expect(mail.to).to eq [user.email]
      expect(mail.from).to eq ['no-reply@sdr.stanford.edu']
    end

    it 'renders the body' do
      expect(mail.body.encoded).to match("A Manager of the #{collection.name} collection has updated the permissions")
    end
  end

  describe '#manage_access_removed_email' do
    let(:user) { build(:user) }
    let(:mail) { described_class.with(user: user, collection: collection).manage_access_removed_email }
    let(:collection) { build(:collection) }

    it 'renders the headers' do
      expect(mail.subject).to eq "Your permissions have changed for the #{collection.name} " \
        'collection in the SDR'
      expect(mail.to).to eq [user.email]
      expect(mail.from).to eq ['no-reply@sdr.stanford.edu']
    end

    it 'renders the body' do
      expect(mail.body.encoded).to match("A Manager of the #{collection.name} collection has updated the permissions")
    end
  end

  describe '#review_access_granted_email' do
    let(:user) { build(:user) }
    let(:mail) { described_class.with(user: user, collection: collection).review_access_granted_email }
    let(:collection) { build(:collection) }

    it 'renders the headers' do
      expect(mail.subject).to eq "You are invited to participate as a Reviewer in the #{collection.name} " \
        'collection in the SDR'
      expect(mail.to).to eq [user.email]
      expect(mail.from).to eq ['no-reply@sdr.stanford.edu']
    end

    it 'renders the body' do
      expect(mail.body.encoded).to match('You have been invited to review new deposits ' \
        "to the #{collection.name} collection")
    end
  end

  describe '#collection_activity' do
    let(:user) { build(:user) }
    let(:depositor) { build(:user, name: 'Audre Lorde') }

    let(:mail) { described_class.with(user: user, collection: collection, depositor: depositor).collection_activity }
    let(:collection) { build(:collection) }

    it 'renders the headers' do
      expect(mail.subject).to eq "New activity in the #{collection.name} collection"
      expect(mail.to).to eq [user.email]
      expect(mail.from).to eq ['no-reply@sdr.stanford.edu']
    end

    it 'renders the body' do
      expect(mail.body.encoded).to match "The Depositor #{depositor.name} has created a draft / " \
                                         'submitted a deposit / started a new version'
      expect(mail.body.encoded).to match "in the #{collection.name} collection"
    end
  end

  describe '#participants_changed_email' do
    let(:user) { build(:user) }
    let(:mail) { described_class.with(user: user, collection: collection).participants_changed_email }
    let(:collection) { build(:collection) }

    it 'renders the headers' do
      expect(mail.subject).to eq "Participant changes for the #{collection.name} collection in the SDR"
      expect(mail.to).to eq [user.email]
      expect(mail.from).to eq ['no-reply@sdr.stanford.edu']
    end

    it 'renders the body' do
      expect(mail.body.encoded).to match 'Members have been either added to or removed from the ' \
                                         "#{collection.name} collection."
    end
  end
end
