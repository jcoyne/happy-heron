# This is an autogenerated file for dynamic methods in ContactEmail
# Please rerun bundle exec rake rails_rbi:models[ContactEmail] to regenerate.

# typed: strong
module ContactEmail::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module ContactEmail::GeneratedAttributeMethods
  sig { returns(ActiveSupport::TimeWithZone) }
  def created_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def created_at=(value); end

  sig { returns(T::Boolean) }
  def created_at?; end

  sig { returns(T.nilable(String)) }
  def email; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def email=(value); end

  sig { returns(T::Boolean) }
  def email?; end

  sig { returns(T.nilable(Integer)) }
  def emailable_id; end

  sig { params(value: T.nilable(T.any(Numeric, ActiveSupport::Duration))).void }
  def emailable_id=(value); end

  sig { returns(T::Boolean) }
  def emailable_id?; end

  sig { returns(T.nilable(String)) }
  def emailable_type; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def emailable_type=(value); end

  sig { returns(T::Boolean) }
  def emailable_type?; end

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

module ContactEmail::GeneratedAssociationMethods
  sig { returns(T.untyped) }
  def emailable; end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: T.untyped).void)).returns(T.untyped) }
  def build_emailable(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: T.untyped).void)).returns(T.untyped) }
  def create_emailable(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: T.untyped).void)).returns(T.untyped) }
  def create_emailable!(*args, &block); end

  sig { params(value: T.untyped).void }
  def emailable=(value); end
end

module ContactEmail::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[ContactEmail]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[ContactEmail]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[ContactEmail]) }
  def find_n(*args); end

  sig { params(id: Integer).returns(T.nilable(ContactEmail)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(ContactEmail) }
  def find_by_id!(id); end
end

class ContactEmail < ApplicationRecord
  include ContactEmail::GeneratedAttributeMethods
  include ContactEmail::GeneratedAssociationMethods
  extend ContactEmail::CustomFinderMethods
  extend ContactEmail::QueryMethodsReturningRelation
  RelationType = T.type_alias { T.any(ContactEmail::ActiveRecord_Relation, ContactEmail::ActiveRecord_Associations_CollectionProxy, ContactEmail::ActiveRecord_AssociationRelation) }
end

module ContactEmail::QueryMethodsReturningRelation
  sig { returns(ContactEmail::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(ContactEmail::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_Relation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ContactEmail::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: ContactEmail::ActiveRecord_Relation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

module ContactEmail::QueryMethodsReturningAssociationRelation
  sig { returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(ContactEmail::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ContactEmail::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: ContactEmail::ActiveRecord_AssociationRelation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

class ContactEmail::ActiveRecord_Relation < ActiveRecord::Relation
  include ContactEmail::ActiveRelation_WhereNot
  include ContactEmail::CustomFinderMethods
  include ContactEmail::QueryMethodsReturningRelation
  Elem = type_member(fixed: ContactEmail)
end

class ContactEmail::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include ContactEmail::ActiveRelation_WhereNot
  include ContactEmail::CustomFinderMethods
  include ContactEmail::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: ContactEmail)
end

class ContactEmail::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include ContactEmail::CustomFinderMethods
  include ContactEmail::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: ContactEmail)

  sig { params(records: T.any(ContactEmail, T::Array[ContactEmail])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(ContactEmail, T::Array[ContactEmail])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(ContactEmail, T::Array[ContactEmail])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(ContactEmail, T::Array[ContactEmail])).returns(T.self_type) }
  def concat(*records); end
end
