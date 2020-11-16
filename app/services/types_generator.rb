# typed: strict
# frozen_string_literal: true

# Maps work types and subtypes to Cocina
class TypesGenerator
  extend T::Sig

  RESOURCE_TYPE_SOURCE_LABEL = 'Stanford self-deposit resource types'

  sig { params(work: Work).returns(T::Array[Cocina::Models::DescriptiveValue]) }
  def self.generate(work:)
    new(work: work).generate
  end

  sig { params(work: Work).void }
  def initialize(work:)
    @work = work
  end

  sig { returns(T::Array[Cocina::Models::DescriptiveValue]) }
  def generate
    build_structured_values + build_genres + build_resource_types
  end

  private

  sig { returns(Work) }
  attr_reader :work

  sig { returns(T::Array[T.nilable(String)]) }
  def subtypes
    Array(work.subtype)
  end

  sig { returns(String) }
  def work_type
    WorkType.find(work.work_type).label
  end

  sig { returns(T::Array[Cocina::Models::DescriptiveValue]) }
  def build_structured_values
    [
      Cocina::Models::DescriptiveValue.new(
        structuredValue: structured_type_and_subtypes,
        source: { value: RESOURCE_TYPE_SOURCE_LABEL },
        type: 'resource type'
      )
    ]
  end

  sig { returns(T::Array[Cocina::Models::DescriptiveValue]) }
  def structured_type_and_subtypes
    [Cocina::Models::DescriptiveValue.new(value: work_type, type: 'type')].concat(
      subtypes.map do |subtype|
        Cocina::Models::DescriptiveValue.new(value: subtype, type: 'subtype')
      end
    )
  end

  sig { returns(T::Array[Cocina::Models::DescriptiveValue]) }
  def build_genres
    return [] if work_type == 'Other'

    subtypes.flat_map do |subtype|
      types_to_genres.dig(work_type, subtype).map do |genre|
        Cocina::Models::DescriptiveValue.new(genre)
      end
    end
  end

  sig { returns(T::Array[Cocina::Models::DescriptiveValue]) }
  def build_resource_types
    return [] if work_type == 'Other'

    resource_types = []

    subtypes.flat_map do |subtype|
      types_to_resource_types.dig(work_type, subtype).map do |resource_type|
        # Multiple subtypes can map to the same resource type. Do not repeat if it already exists.
        next if resource_types.include?(resource_type)

        resource_types << resource_type
        Cocina::Models::DescriptiveValue.new(resource_type)
      end.compact
    end
  end

  sig { returns(T::Hash[String, T::Hash[String, T::Array[Cocina::Models::DescriptiveValue]]]) }
  def types_to_genres
    YAML.load_file(Rails.root.join('config/mappings/types_to_genres.yml'))
  end

  sig { returns(T::Hash[String, T::Hash[String, T::Array[Cocina::Models::DescriptiveValue]]]) }
  def types_to_resource_types
    YAML.load_file(Rails.root.join('config/mappings/types_to_resource_types.yml'))
  end
end
