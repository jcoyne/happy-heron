# typed: true
# frozen_string_literal: true

# This generates a the Access cocina model for a work
class AccessGenerator
  extend T::Sig

  sig { params(work_version: WorkVersion).returns(Hash) }
  def self.generate(work_version:)
    new(work_version: work_version).generate
  end

  sig { params(work_version: WorkVersion).void }
  def initialize(work_version:)
    @work_version = work_version
  end

  sig { returns(Hash) }
  def generate
    access = work_version.embargo_date ? embargoed_access : regular_access

    base_access.merge(access)
  end

  private

  attr_reader :work_version

  def regular_access
    {
      access: work_version.access,
      download: work_version.access
    }
  end

  def embargoed_access
    {
      access: 'citation-only',
      download: 'none',
      embargo: { access: 'world', download: 'world', releaseDate: work_version.embargo_date.iso8601 }
    }
  end

  def base_access
    { license: License.find(work_version.license).uri.presence }.compact
  end
end
