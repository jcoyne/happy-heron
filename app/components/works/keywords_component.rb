# typed: false
# frozen_string_literal: true

module Works
  # Allows the user to search for keywords or provide freetext keywords
  class KeywordsComponent < ApplicationComponent
    def initialize(form:, key:)
      @form = form
      @key = key
    end

    attr_reader :form, :key

    def error?
      errors.present?
    end

    def error_message
      safe_join(errors.map(&:message), tag.br)
    end

    def errors
      form.object.errors.where(:keywords)
    end

    def row(keyword_form)
      render Works::KeywordsRowComponent.new(form: keyword_form, key: key)
    end
  end
end
