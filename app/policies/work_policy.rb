# frozen_string_literal: true

# Authorization policy for Work objects
class WorkPolicy < ApplicationPolicy
  alias_rule :delete?, to: :destroy?

  # Return the relation defining the collections you can view.
  scope_for :relation do |relation|
    relation.where(collection_id: user.manages_collection_ids + user.reviews_collection_ids).or(
      relation.where(depositor: user)
    )
  end

  def destroy?
    (administrator? || depositor? || reviews_collection? || manages_collection?(collection)) &&
      record.persisted? && record.head.deleteable?
  end

  delegate :administrator?, to: :user_with_groups

  def reviews_collection?
    allowed_to?(:review?, record.collection)
  end

  def depositor?
    record.depositor == user
  end
end
