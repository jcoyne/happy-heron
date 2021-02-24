# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Works::VersionDescriptionComponent do
  let(:form) { ActionView::Helpers::FormBuilder.new(nil, work_form, controller.view_context, {}) }
  let(:rendered) { render_inline(described_class.new(form: form)) }
  let(:work) { build(:work) }
  let(:work_form) { WorkForm.new(work_version: work_version, work: work) }

  context 'with a first draft' do
    let(:work_version) { build(:work_version, work: work) }

    it 'does not renders the component' do
      expect(rendered.to_html).not_to include('Version your work')
    end
  end

  context 'with a deposited work' do
    let(:work_version) { build(:work_version, work: work, state: 'deposited') }

    it 'does not renders the component' do
      expect(rendered.to_html).to include('Version your work')
    end
  end
end
