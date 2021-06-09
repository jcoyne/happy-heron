# typed: false
# frozen_string_literal: true

module Works
  # Renders the details about the work (show page)
  class DetailComponent < ApplicationComponent
    sig { params(work_version: WorkVersion).void }
    def initialize(work_version:)
      @work_version = work_version
    end

    sig { returns(WorkVersion) }
    attr_reader :work_version

    delegate :purl, :collection, :depositor, :events, to: :work

    delegate :version, :work_type, :contact_emails, :abstract, :citation,
             :attached_files, :related_works, :related_links,
             :created_edtf, :published_edtf, :rejected?, :work, :description, to: :work_version

    sig { returns(T::Array[AbstractContributor]) }
    def contributors
      work_version.authors + work_version.contributors
    end

    def collection_name
      collection.head.name
    end

    # Displays the created date as edtf
    sig { returns(T.nilable(String)) }
    def created
      format_edtf(created_edtf&.edtf)
    end

    # Displays the published date as edtf
    sig { returns(T.nilable(String)) }
    def published
      published_edtf&.edtf
    end

    sig { returns(String) }
    def title
      WorkTitlePresenter.show(work_version)
    end

    sig { returns(String) }
    def created_at
      render LocalTimeComponent.new(datetime: work_version.created_at)
    end

    sig { returns(String) }
    def updated_at
      render LocalTimeComponent.new(datetime: work_version.updated_at)
    end

    sig { returns(String) }
    def embargo_date
      work_version.embargo_date ? T.must(work_version.embargo_date).to_formatted_s(:long) : 'Immediately'
    end

    sig { returns(String) }
    def access
      work_version.access == 'stanford' ? 'Stanford Community' : 'Everyone'
    end

    sig { returns(String) }
    def license
      License.label_for(work_version.license)
    end

    sig { returns(String) }
    def subtypes
      Array(work_version.subtype).join(', ')
    end

    sig { returns(String) }
    def keywords
      work_version.keywords.map(&:label).join(', ')
    end

    sig { returns(T::Boolean) }
    def display_approval?
      work_version.pending_approval?
    end

    sig { returns(T.nilable(String)) }
    def rejection_reason
      work.last_rejection_description
    end

    private

    sig { params(edtf: T.nilable(String)).returns(T.nilable(String)) }
    def format_edtf(edtf)
      return if edtf.nil?

      # For example, "2020?/2021?" to "ca. 2020 - ca. 2021"
      edtf.sub(%r{/}, ' - ').gsub(/(\S+)\?/, 'ca. \1')
    end
  end
end
