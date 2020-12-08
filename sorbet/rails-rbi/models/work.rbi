# This is an autogenerated file for dynamic methods in Work
# Please rerun bundle exec rake rails_rbi:models[Work] to regenerate.

# typed: strong
module Work::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module Work::GeneratedAttributeMethods
  sig { returns(T.nilable(Integer)) }
  def collection_id; end

  sig { params(value: T.nilable(T.any(Numeric, ActiveSupport::Duration))).void }
  def collection_id=(value); end

  sig { returns(T::Boolean) }
  def collection_id?; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def created_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def created_at=(value); end

  sig { returns(T::Boolean) }
  def created_at?; end

  sig { returns(T.nilable(Integer)) }
  def depositor_id; end

  sig { params(value: T.nilable(T.any(Numeric, ActiveSupport::Duration))).void }
  def depositor_id=(value); end

  sig { returns(T::Boolean) }
  def depositor_id?; end

  sig { returns(T.nilable(String)) }
  def druid; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def druid=(value); end

  sig { returns(T::Boolean) }
  def druid?; end

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

  sig { returns(ActiveSupport::TimeWithZone) }
  def updated_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def updated_at=(value); end

  sig { returns(T::Boolean) }
  def updated_at?; end
end

module Work::GeneratedAssociationMethods
  sig { returns(::Collection) }
  def collection; end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Collection).void)).returns(::Collection) }
  def build_collection(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Collection).void)).returns(::Collection) }
  def create_collection(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Collection).void)).returns(::Collection) }
  def create_collection!(*args, &block); end

  sig { params(value: ::Collection).void }
  def collection=(value); end

  sig { returns(::User) }
  def depositor; end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::User).void)).returns(::User) }
  def build_depositor(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::User).void)).returns(::User) }
  def create_depositor(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::User).void)).returns(::User) }
  def create_depositor!(*args, &block); end

  sig { params(value: ::User).void }
  def depositor=(value); end

  sig { returns(::Event::ActiveRecord_Associations_CollectionProxy) }
  def events; end

  sig { returns(T::Array[Integer]) }
  def event_ids; end

  sig { params(value: T::Enumerable[::Event]).void }
  def events=(value); end

  sig { returns(T.nilable(::WorkVersion)) }
  def head; end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::WorkVersion).void)).returns(::WorkVersion) }
  def build_head(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::WorkVersion).void)).returns(::WorkVersion) }
  def create_head(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::WorkVersion).void)).returns(::WorkVersion) }
  def create_head!(*args, &block); end

  sig { params(value: T.nilable(::WorkVersion)).void }
  def head=(value); end

  sig { returns(::WorkVersion::ActiveRecord_Associations_CollectionProxy) }
  def work_versions; end

  sig { returns(T::Array[Integer]) }
  def work_version_ids; end

  sig { params(value: T::Enumerable[::WorkVersion]).void }
  def work_versions=(value); end
end

module Work::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[Work]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[Work]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[Work]) }
  def find_n(*args); end

  sig { params(id: Integer).returns(T.nilable(Work)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(Work) }
  def find_by_id!(id); end
end

class Work < ApplicationRecord
  include Work::GeneratedAttributeMethods
  include Work::GeneratedAssociationMethods
  extend Work::CustomFinderMethods
  extend Work::QueryMethodsReturningRelation
  RelationType = T.type_alias { T.any(Work::ActiveRecord_Relation, Work::ActiveRecord_Associations_CollectionProxy, Work::ActiveRecord_AssociationRelation) }
end

module Work::QueryMethodsReturningRelation
  sig { returns(Work::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Work::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_Relation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Work::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: Work::ActiveRecord_Relation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

module Work::QueryMethodsReturningAssociationRelation
  sig { returns(Work::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Work::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(Work::ActiveRecord_AssociationRelation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Work::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: Work::ActiveRecord_AssociationRelation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

class Work::ActiveRecord_Relation < ActiveRecord::Relation
  include Work::ActiveRelation_WhereNot
  include Work::CustomFinderMethods
  include Work::QueryMethodsReturningRelation
  Elem = type_member(fixed: Work)
end

class Work::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include Work::ActiveRelation_WhereNot
  include Work::CustomFinderMethods
  include Work::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: Work)
end

class Work::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include Work::CustomFinderMethods
  include Work::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: Work)

  sig { params(records: T.any(Work, T::Array[Work])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(Work, T::Array[Work])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(Work, T::Array[Work])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(Work, T::Array[Work])).returns(T.self_type) }
  def concat(*records); end
end
