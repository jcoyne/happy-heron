# typed: false
# frozen_string_literal: true

module Collections
  # Displays a single table row representing a work in a collection.
  class WorkRowComponent < ApplicationComponent
    with_collection_parameter :work

    def initialize(work:)
      @work = work
    end

    attr_reader :work

    # Returns the size of the attached files
    def size
      number_to_human_size(attached_files.sum(&:byte_size))
    end

    delegate :attached_files, to: :work
    delegate :allowed_to?, to: :helpers
  end
end
