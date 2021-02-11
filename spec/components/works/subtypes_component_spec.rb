# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Works::SubtypesComponent do
  let(:form) { ActionView::Helpers::FormBuilder.new('work', work_form, controller.view_context, {}) }
  let(:work) { build_stubbed(:work) }
  let(:work_form) { WorkForm.new(work) }
  let(:rendered) { render_inline(described_class.new(form: form)) }

  context 'when work type is "other"' do
    let(:work) { build_stubbed(:work, work_type: 'other', subtype: ['femur']) }

    it 'does not label subtypes as optional' do
      expect(rendered.to_html).to include('Work types')
      expect(rendered.to_html).not_to include('optional')
    end
  end

  context 'when work type is "music"' do
    let(:work) { build_stubbed(:work, work_type: 'music', subtype: ['Data']) }

    it 'does not label subtypes as optional' do
      expect(rendered.to_html).to include('Work types')
      expect(rendered.to_html).not_to include('optional')
    end

    it 'renders a header about selecting one term' do
      expect(rendered.to_html).to include('Select at least one term below')
    end
  end

  context 'when work type is anything else' do
    it 'labels subtypes as optional' do
      expect(rendered.to_html).to include('Work types (optional)')
    end
  end
end
