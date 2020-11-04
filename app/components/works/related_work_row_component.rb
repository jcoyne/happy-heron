# typed: true
# frozen_string_literal: true

module Works
  # Renders a widget for describing a related work.
  class RelatedWorkRowComponent < ApplicationComponent
    def initialize(form:)
      @form = form
    end

    attr_reader :form
  end
end
