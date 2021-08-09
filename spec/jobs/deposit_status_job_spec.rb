# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DepositStatusJob do
  subject(:run) { instance.work(message) }

  let(:instance) { described_class.new }

  context 'with a work that is depositing' do
    let(:work_version) do
      build(:work_version, :depositing, work: work)
    end
    let(:work) { create(:work, :with_druid, collection: collection, depositor: collection.managed_by.first) }
    let(:collection) { build(:collection, :with_managers) }
    let(:collection_version) { create(:collection_version, collection: collection) }
    let(:message) { "{\"druid\":\"#{work.druid}\"}" }

    before do
      collection.update(head: collection_version)
      work.update(head: work_version)
    end

    it 'updates the work version' do
      expect { run }.to have_enqueued_job(ActionMailer::MailDeliveryJob).with(
        'CollectionsMailer', 'item_deposited', 'deliver_now',
        { params: {
          user: collection.managed_by.last,
          depositor: work.depositor,
          collection_version: collection_version
        }, args: [] }
      )

      expect(work_version.reload).to be_deposited
    end
  end

  context 'with a work that is already deposited (embargo was released by DSA)' do
    let(:work_version) do
      build(:work_version, :deposited, work: work)
    end
    let(:work) { create(:work, :with_druid) }
    let(:message) { "{\"druid\":\"#{work.druid}\"}" }

    before do
      work.update(head: work_version)
    end

    it "doesn't do a transition" do
      expect { run }.not_to have_enqueued_job(ActionMailer::MailDeliveryJob)
      expect(work_version.reload).to be_deposited
    end
  end

  context 'with a work that is in a verison_draft state (embargo was released by DSA)' do
    let(:work_version) do
      build(:work_version, :version_draft, work: work)
    end
    let(:work) { create(:work, :with_druid) }
    let(:message) { "{\"druid\":\"#{work.druid}\"}" }

    before do
      work.update(head: work_version)
    end

    it "doesn't do a transition" do
      expect { run }.not_to have_enqueued_job(ActionMailer::MailDeliveryJob)
      expect(work_version.reload).to be_version_draft
    end
  end

  context 'with a collection' do
    let(:collection) { create(:collection, :with_druid) }
    let(:collection_version) { build(:collection_version, :depositing, collection: collection) }
    let(:message) { "{\"druid\":\"#{collection.druid}\"}" }

    before do
      collection.update(head: collection_version)
    end

    it 'transitions to deposited state' do
      run
      expect(collection_version.reload).to be_deposited
    end
  end
end
