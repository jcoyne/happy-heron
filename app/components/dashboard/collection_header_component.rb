# frozen_string_literal: true

module Dashboard
  # Renders a header for a summary table
  class CollectionHeaderComponent < ApplicationComponent
    def initialize(collection_version:)
      @collection_version = collection_version
    end

    attr_reader :collection_version

    delegate :depositing?, :first_draft?, to: :collection_version
    delegate :collection, to: :collection_version

    def name
      collection_version.name.presence || 'No Title'
    end

    def spinner
      tag.span class: 'fa-solid fa-spinner fa-pulse'
    end
  end
end
