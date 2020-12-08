# This is an autogenerated file for dynamic methods in Collection
# Please rerun bundle exec rake rails_rbi:models[Collection] to regenerate.

# typed: strong
module Collection::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module Collection::GeneratedAttributeMethods
  sig { returns(T.nilable(String)) }
  def access; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def access=(value); end

  sig { returns(T::Boolean) }
  def access?; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def created_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def created_at=(value); end

  sig { returns(T::Boolean) }
  def created_at?; end

  sig { returns(Integer) }
  def creator_id; end

  sig { params(value: T.any(Numeric, ActiveSupport::Duration)).void }
  def creator_id=(value); end

  sig { returns(T::Boolean) }
  def creator_id?; end

  sig { returns(T.nilable(String)) }
  def default_license; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def default_license=(value); end

  sig { returns(T::Boolean) }
  def default_license?; end

  sig { returns(T.nilable(String)) }
  def druid; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def druid=(value); end

  sig { returns(T::Boolean) }
  def druid?; end

  sig { returns(T.nilable(T::Boolean)) }
  def email_depositors_status_changed; end

  sig { params(value: T.nilable(T::Boolean)).void }
  def email_depositors_status_changed=(value); end

  sig { returns(T::Boolean) }
  def email_depositors_status_changed?; end

  sig { returns(T.nilable(T::Boolean)) }
  def email_when_participants_changed; end

  sig { params(value: T.nilable(T::Boolean)).void }
  def email_when_participants_changed=(value); end

  sig { returns(T::Boolean) }
  def email_when_participants_changed?; end

  sig { returns(T.nilable(Integer)) }
  def head_id; end

  sig { params(value: T.nilable(T.any(Numeric, ActiveSupport::Duration))).void }
  def head_id=(value); end

  sig { returns(T::Boolean) }
  def head_id?; end

  sig { returns(Integer) }
  def id; end

  sig { params(value: T.any(Numeric, ActiveSupport::Duration)).void }
  def id=(value); end

  sig { returns(T::Boolean) }
  def id?; end

  sig { returns(String) }
  def license_option; end

  sig { params(value: T.any(String, Symbol)).void }
  def license_option=(value); end

  sig { returns(T::Boolean) }
  def license_option?; end

  sig { returns(T.nilable(String)) }
  def release_duration; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def release_duration=(value); end

  sig { returns(T::Boolean) }
  def release_duration?; end

  sig { returns(T.nilable(String)) }
  def release_option; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def release_option=(value); end

  sig { returns(T::Boolean) }
  def release_option?; end

  sig { returns(T.nilable(String)) }
  def required_license; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def required_license=(value); end

  sig { returns(T::Boolean) }
  def required_license?; end

  sig { returns(T.nilable(T::Boolean)) }
  def review_enabled; end

  sig { params(value: T.nilable(T::Boolean)).void }
  def review_enabled=(value); end

  sig { returns(T::Boolean) }
  def review_enabled?; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def updated_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def updated_at=(value); end

  sig { returns(T::Boolean) }
  def updated_at?; end
end

module Collection::GeneratedAssociationMethods
  sig { returns(::CollectionVersion::ActiveRecord_Associations_CollectionProxy) }
  def collection_versions; end

  sig { returns(T::Array[Integer]) }
  def collection_version_ids; end

  sig { params(value: T::Enumerable[::CollectionVersion]).void }
  def collection_versions=(value); end

  sig { returns(::User) }
  def creator; end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::User).void)).returns(::User) }
  def build_creator(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::User).void)).returns(::User) }
  def create_creator(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::User).void)).returns(::User) }
  def create_creator!(*args, &block); end

  sig { params(value: ::User).void }
  def creator=(value); end

  sig { returns(::User::ActiveRecord_Associations_CollectionProxy) }
  def depositors; end

  sig { returns(T::Array[Integer]) }
  def depositor_ids; end

  sig { params(value: T::Enumerable[::User]).void }
  def depositors=(value); end

  sig { returns(::Event::ActiveRecord_Associations_CollectionProxy) }
  def events; end

  sig { returns(T::Array[Integer]) }
  def event_ids; end

  sig { params(value: T::Enumerable[::Event]).void }
  def events=(value); end

  sig { returns(T.nilable(::CollectionVersion)) }
  def head; end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::CollectionVersion).void)).returns(::CollectionVersion) }
  def build_head(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::CollectionVersion).void)).returns(::CollectionVersion) }
  def create_head(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::CollectionVersion).void)).returns(::CollectionVersion) }
  def create_head!(*args, &block); end

  sig { params(value: T.nilable(::CollectionVersion)).void }
  def head=(value); end

  sig { returns(::User::ActiveRecord_Associations_CollectionProxy) }
  def managed_by; end

  sig { returns(T::Array[Integer]) }
  def managed_by_ids; end

  sig { params(value: T::Enumerable[::User]).void }
  def managed_by=(value); end

  sig { returns(::User::ActiveRecord_Associations_CollectionProxy) }
  def reviewed_by; end

  sig { returns(T::Array[Integer]) }
  def reviewed_by_ids; end

  sig { params(value: T::Enumerable[::User]).void }
  def reviewed_by=(value); end

  sig { returns(::Work::ActiveRecord_Associations_CollectionProxy) }
  def works; end

  sig { returns(T::Array[Integer]) }
  def work_ids; end

  sig { params(value: T::Enumerable[::Work]).void }
  def works=(value); end
end

module Collection::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[Collection]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[Collection]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[Collection]) }
  def find_n(*args); end

  sig { params(id: Integer).returns(T.nilable(Collection)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(Collection) }
  def find_by_id!(id); end
end

class Collection < ApplicationRecord
  include Collection::GeneratedAttributeMethods
  include Collection::GeneratedAssociationMethods
  extend Collection::CustomFinderMethods
  extend Collection::QueryMethodsReturningRelation
  RelationType = T.type_alias { T.any(Collection::ActiveRecord_Relation, Collection::ActiveRecord_Associations_CollectionProxy, Collection::ActiveRecord_AssociationRelation) }
end

module Collection::QueryMethodsReturningRelation
  sig { returns(Collection::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Collection::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_Relation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Collection::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: Collection::ActiveRecord_Relation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

module Collection::QueryMethodsReturningAssociationRelation
  sig { returns(Collection::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Collection::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(Collection::ActiveRecord_AssociationRelation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Collection::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: Collection::ActiveRecord_AssociationRelation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

class Collection::ActiveRecord_Relation < ActiveRecord::Relation
  include Collection::ActiveRelation_WhereNot
  include Collection::CustomFinderMethods
  include Collection::QueryMethodsReturningRelation
  Elem = type_member(fixed: Collection)
end

class Collection::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include Collection::ActiveRelation_WhereNot
  include Collection::CustomFinderMethods
  include Collection::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: Collection)
end

class Collection::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include Collection::CustomFinderMethods
  include Collection::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: Collection)

  sig { params(records: T.any(Collection, T::Array[Collection])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(Collection, T::Array[Collection])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(Collection, T::Array[Collection])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(Collection, T::Array[Collection])).returns(T.self_type) }
  def concat(*records); end
end
