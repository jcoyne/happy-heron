# typed: false
# frozen_string_literal: true

module Works
  # Allows the user to search for keywords or provide freetext keywords
  class KeywordsRowComponent < ApplicationComponent
    def initialize(form:, key:)
      @form = form
      @key = key
    end

    attr_reader :form, :key

    sig { returns(T::Boolean) }
    def not_first_keyword?
      form.index != 0
    end

    def error?
      errors.present?
    end

    def errors
      form.object.errors.where(:keywords)
    end
  end
end
