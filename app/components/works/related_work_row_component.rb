# frozen_string_literal: true

module Works
  # Renders a widget for describing a related work.
  class RelatedWorkRowComponent < ApplicationComponent
    def initialize(form:)
      @form = form
    end

    attr_reader :form

    delegate :citation, to: :work

    def not_first_work?
      form.index != 0
    end

    def work
      form.object
    end
  end
end
