# typed: true
# frozen_string_literal: true

# An ActiveModel validator for work subtypes
class WorkSubtypeValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if self.class.valid?(record.work_type, value)

    record.errors[attribute] << "is not a valid subtype for work type #{record.work_type}"
  end

  # Public class method so that it can be called from a controller. We want to
  # validate these on the incoming works/new request before there is a model
  # instance to validate.
  def self.valid?(work_type, value)
    return Array(value).first.present? if work_type == 'other'

    # Subtype is not required for work types other than 'other'
    return true if value.nil?

    value.all? { |subtype| subtype.in?(WorkType.subtypes_for(work_type)) }
  end
end
