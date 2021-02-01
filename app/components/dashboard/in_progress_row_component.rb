# typed: false
# frozen_string_literal: true

module Dashboard
  # Display some information about a work that is in progress
  class InProgressRowComponent < ApplicationComponent
    with_collection_parameter :work

    def initialize(work:)
      @work = work
    end

    attr_reader :work

    def collection_name
      Dashboard::CollectionHeaderComponent.new(collection: work.collection).name
    end

    def truncated_collection_name
      truncate(collection_name, length: 100, separator: ' ')
    end

    def edit_work_link
      title = Works::DetailComponent.new(work: work).title
      link_to truncate(title, length: 100, separator: ' '), edit_work_path(work), title: title
    end
  end
end
