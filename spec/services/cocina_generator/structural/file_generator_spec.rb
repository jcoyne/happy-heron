# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CocinaGenerator::Structural::FileGenerator do
  let(:model) { described_class.generate(work_version: work_version, attached_file: attached_file) }

  describe '#access' do
    subject { model.access }

    context 'when file is visible' do
      let(:attached_file) { create(:attached_file, :with_file, work_version: work_version) }

      context 'when work is public' do
        let(:work_version) { build(:work_version) }

        it { is_expected.to eq Cocina::Models::FileAccess.new(view: 'world', download: 'world') }
      end

      context 'when work is stanford-only' do
        let(:work_version) { build(:work_version, access: 'stanford') }

        it { is_expected.to eq Cocina::Models::FileAccess.new(view: 'stanford', download: 'stanford') }
      end
    end

    context 'when file is hidden' do
      let(:work_version) { build(:work_version) }
      let(:attached_file) { create(:attached_file, :with_file, work_version: work_version, hide: true) }

      it { is_expected.to eq Cocina::Models::FileAccess.new(view: 'world', download: 'world') }
    end

    context 'when object is embargoed' do
      let(:work_version) { build(:work_version, :embargoed) }
      let(:attached_file) { create(:attached_file, :with_file, work_version: work_version, hide: true) }

      it { is_expected.to eq Cocina::Models::FileAccess.new(view: 'dark', download: 'none') }
    end
  end
end
