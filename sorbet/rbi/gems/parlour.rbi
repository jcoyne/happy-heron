# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/parlour/all/parlour.rbi
#
# parlour-4.0.1

module Parlour
end
module Parlour::Debugging
  def self.debug_mode=(*args, &blk); end
  def self.debug_mode?(*args, &blk); end
  def self.debug_puts(*args, &blk); end
  def self.name_for_debug_caller(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
module Parlour::Debugging::Tree
  def self.begin(*args, &blk); end
  def self.end(*args, &blk); end
  def self.here(*args, &blk); end
  def self.line_prefix; end
  def self.text_prefix; end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
module Kernel
end
class Parlour::Plugin
  def generate(*args, &blk); end
  def initialize(*args, &blk); end
  def self.inherited(*args, &blk); end
  def self.registered_plugins(*args, &blk); end
  def self.run_plugins(*args, &blk); end
  def strictness(*args, &blk); end
  def strictness=(arg0); end
  extend T::Helpers
  extend T::InterfaceWrapper::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Parlour::RbiGenerator
  def current_plugin(*args, &blk); end
  def current_plugin=(arg0); end
  def initialize(*args, &blk); end
  def options(*args, &blk); end
  def rbi(*args, &blk); end
  def root(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Parlour::RbiGenerator::Parameter
  def ==(*args, &blk); end
  def default(*args, &blk); end
  def initialize(*args, &blk); end
  def kind(*args, &blk); end
  def name(*args, &blk); end
  def name_without_kind(*args, &blk); end
  def to_def_param(*args, &blk); end
  def to_sig_param(*args, &blk); end
  def type(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Parlour::RbiGenerator::RbiObject
  def add_comment(*args, &blk); end
  def add_comments(*args, &blk); end
  def comments(*args, &blk); end
  def describe(*args, &blk); end
  def generate_comments(*args, &blk); end
  def generate_rbi(*args, &blk); end
  def generated_by(*args, &blk); end
  def generator(*args, &blk); end
  def initialize(*args, &blk); end
  def merge_into_self(*args, &blk); end
  def mergeable?(*args, &blk); end
  def name(*args, &blk); end
  extend T::Helpers
  extend T::InterfaceWrapper::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Parlour::RbiGenerator::Method < Parlour::RbiGenerator::RbiObject
  def ==(*args, &blk); end
  def abstract(*args, &blk); end
  def class_method(*args, &blk); end
  def describe(*args, &blk); end
  def final(*args, &blk); end
  def generate_definition(*args, &blk); end
  def generate_rbi(*args, &blk); end
  def implementation(*args, &blk); end
  def initialize(*args, &blk); end
  def merge_into_self(*args, &blk); end
  def mergeable?(*args, &blk); end
  def overridable(*args, &blk); end
  def override(*args, &blk); end
  def parameters(*args, &blk); end
  def qualifiers(*args, &blk); end
  def return_type(*args, &blk); end
  def type_parameters(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Parlour::RbiGenerator::Attribute < Parlour::RbiGenerator::Method
  def ==(*args, &blk); end
  def class_attribute(*args, &blk); end
  def generate_definition(*args, &blk); end
  def initialize(*args, &blk); end
  def kind(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class Parlour::RbiGenerator::Arbitrary < Parlour::RbiGenerator::RbiObject
  def ==(*args, &blk); end
  def code(*args, &blk); end
  def code=(arg0); end
  def describe(*args, &blk); end
  def generate_rbi(*args, &blk); end
  def initialize(*args, &blk); end
  def merge_into_self(*args, &blk); end
  def mergeable?(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class Parlour::RbiGenerator::Options
  def break_params(*args, &blk); end
  def indented(*args, &blk); end
  def initialize(*args, &blk); end
  def sort_namespaces(*args, &blk); end
  def tab_size(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Parlour::RbiGenerator::Include < Parlour::RbiGenerator::RbiObject
  def ==(*args, &blk); end
  def describe(*args, &blk); end
  def generate_rbi(*args, &blk); end
  def initialize(*args, &blk); end
  def merge_into_self(*args, &blk); end
  def mergeable?(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class Parlour::RbiGenerator::Extend < Parlour::RbiGenerator::RbiObject
  def ==(*args, &blk); end
  def describe(*args, &blk); end
  def generate_rbi(*args, &blk); end
  def initialize(*args, &blk); end
  def merge_into_self(*args, &blk); end
  def mergeable?(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class Parlour::RbiGenerator::Constant < Parlour::RbiGenerator::RbiObject
  def ==(*args, &blk); end
  def describe(*args, &blk); end
  def eigen_constant; end
  def generate_rbi(*args, &blk); end
  def initialize(*args, &blk); end
  def merge_into_self(*args, &blk); end
  def mergeable?(*args, &blk); end
  def value(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class Parlour::RbiGenerator::Namespace < Parlour::RbiGenerator::RbiObject
  def add_comment_to_next_child(*args, &blk); end
  def children(*args, &blk); end
  def constants(*args, &blk); end
  def create_arbitrary(code:, &block); end
  def create_attr(*args, &blk); end
  def create_attr_accessor(*args, &blk); end
  def create_attr_reader(*args, &blk); end
  def create_attr_writer(*args, &blk); end
  def create_attribute(*args, &blk); end
  def create_class(*args, &blk); end
  def create_constant(*args, &blk); end
  def create_enum_class(*args, &blk); end
  def create_extend(*args, &blk); end
  def create_extends(*args, &blk); end
  def create_include(*args, &blk); end
  def create_includes(*args, &blk); end
  def create_method(*args, &blk); end
  def create_module(*args, &blk); end
  def create_struct_class(*args, &blk); end
  def create_type_alias(*args, &blk); end
  def describe(*args, &blk); end
  def extends(*args, &blk); end
  def final(*args, &blk); end
  def generate_body(*args, &blk); end
  def generate_rbi(*args, &blk); end
  def includes(*args, &blk); end
  def initialize(*args, &blk); end
  def merge_into_self(*args, &blk); end
  def mergeable?(*args, &blk); end
  def move_next_comments(*args, &blk); end
  def path(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Parlour::RbiGenerator::ModuleNamespace < Parlour::RbiGenerator::Namespace
  def describe(*args, &blk); end
  def generate_rbi(*args, &blk); end
  def initialize(*args, &blk); end
  def interface(*args, &blk); end
  def merge_into_self(*args, &blk); end
  def mergeable?(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Parlour::RbiGenerator::ClassNamespace < Parlour::RbiGenerator::Namespace
  def abstract(*args, &blk); end
  def describe(*args, &blk); end
  def generate_rbi(*args, &blk); end
  def initialize(*args, &blk); end
  def merge_into_self(*args, &blk); end
  def mergeable?(*args, &blk); end
  def superclass(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Parlour::RbiGenerator::EnumClassNamespace < Parlour::RbiGenerator::ClassNamespace
  def enums(*args, &blk); end
  def generate_body(*args, &blk); end
  def initialize(*args, &blk); end
  def merge_into_self(*args, &blk); end
  def mergeable?(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Parlour::RbiGenerator::StructProp
  def ==(*args, &blk); end
  def array(*args, &blk); end
  def default(*args, &blk); end
  def dont_store(*args, &blk); end
  def enum(*args, &blk); end
  def factory(*args, &blk); end
  def foreign(*args, &blk); end
  def immutable(*args, &blk); end
  def initialize(*args, &blk); end
  def name(*args, &blk); end
  def optional(*args, &blk); end
  def override(*args, &blk); end
  def redaction(*args, &blk); end
  def to_prop_call(*args, &blk); end
  def type(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Parlour::RbiGenerator::StructClassNamespace < Parlour::RbiGenerator::ClassNamespace
  def generate_body(*args, &blk); end
  def initialize(*args, &blk); end
  def merge_into_self(*args, &blk); end
  def mergeable?(*args, &blk); end
  def props(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Parlour::DetachedRbiGenerator < Parlour::RbiGenerator
  def current_plugin(*args, &blk); end
  def detached!(*args, &blk); end
  def options(*args, &blk); end
  def rbi(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class Parlour::ConflictResolver
  def all_eql?(*args, &blk); end
  def deduplicate_mixins_of_name(*args, &blk); end
  def merge_strategy(*args, &blk); end
  def resolve_conflicts(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Parlour::ParseError < StandardError
  def buffer(*args, &blk); end
  def initialize(buffer, range); end
  def range(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Parlour::TypeParser
  def ast(*args, &blk); end
  def ast=(arg0); end
  def body_has_modifier?(*args, &blk); end
  def body_includes_and_extends(*args, &blk); end
  def constant_names(*args, &blk); end
  def generator(*args, &blk); end
  def generator=(arg0); end
  def initialize(*args, &blk); end
  def node_to_s(*args, &blk); end
  def parse_all(*args, &blk); end
  def parse_err(*args, &blk); end
  def parse_method_into_methods(*args, &blk); end
  def parse_path_to_object(*args, &blk); end
  def parse_sig_into_methods(*args, &blk); end
  def parse_sig_into_sig(*args, &blk); end
  def previous_sibling_sig_node?(*args, &blk); end
  def self.from_source(*args, &blk); end
  def sig_node?(*args, &blk); end
  def unknown_node_errors(*args, &blk); end
  def zip_by(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Parlour::TypeParser::NodePath
  def child(*args, &blk); end
  def indices(*args, &blk); end
  def initialize(*args, &blk); end
  def parent(*args, &blk); end
  def sibling(*args, &blk); end
  def traverse(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Parlour::TypeParser::IntermediateSig < T::Struct
  def __t_props_generated_deserialize(*args); end
  def __t_props_generated_serialize(*args); end
  def abstract; end
  def abstract=(val); end
  def final; end
  def final=(val); end
  def overridable; end
  def overridable=(val); end
  def override; end
  def override=(val); end
  def params; end
  def params=(val); end
  def return_type; end
  def return_type=(val); end
  def self.inherited(s); end
  def type_parameters; end
  def type_parameters=(val); end
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
end
module Parlour::TypeLoader
  def self.load_file(*args, &blk); end
  def self.load_project(*args, &blk); end
  def self.load_source(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
