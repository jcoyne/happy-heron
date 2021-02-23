# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/dry-types/all/dry-types.rbi
#
# dry-types-1.5.1

module Dry
  def self.Types(*namespaces, default: nil, **aliases); end
end
module Dry::Types
  def self.Rule(options); end
  def self.[](name); end
  def self.const_missing(const); end
  def self.container; end
  def self.define_builder(method, &block); end
  def self.identifier(klass); end
  def self.included(*arg0); end
  def self.module(*args, &block); end
  def self.register(name, type = nil, &block); end
  def self.registered?(class_or_identifier); end
  def self.rule_compiler; end
  def self.type_map; end
  extend Anonymous_Dry_Core_Deprecations_Tagged_40
  extend Anonymous_Dry_Core_Deprecations_Tagged_42
  extend Anonymous_Dry_Core_Deprecations_Tagged_45
  extend Anonymous_Module_41
  extend Anonymous_Module_43
  extend Anonymous_Module_44
  extend Dry::Core::ClassAttributes
  extend Dry::Core::ClassAttributes
  extend Dry::Core::Deprecations::Interface
  extend Dry::Core::Deprecations::Interface
  extend Dry::Core::Deprecations::Interface
  extend Dry::Core::Extensions
  include Dry::Core::Constants
end
class Dry::Types::Container
  def config; end
  extend Dry::Configurable
  extend Dry::Configurable::ClassMethods
  include Dry::Container::Mixin
end
module Dry::Types::Type
  def ===(input = nil); end
  def [](input = nil, &block); end
  def call(input = nil, &block); end
  def safe(*args, &block); end
  def valid?(input = nil); end
  extend Anonymous_Dry_Core_Deprecations_Tagged_46
  extend Dry::Core::Deprecations::Interface
end
module Anonymous_Dry_Core_Deprecations_Tagged_46
end
module Dry::Types::Printable
  def inspect; end
  def to_s; end
end
module Dry::Types::Options
  def initialize(*args, **options); end
  def options; end
  def with(**new_options); end
end
module Dry::Types::Decorator
  def __new__(type); end
  def constrained?; end
  def decorate?(response); end
  def default?; end
  def initialize(type, *arg1, **arg2); end
  def method_missing(meth, *args, &block); end
  def respond_to_missing?(meth, include_private = nil); end
  def to_proc; end
  def try(input, &block); end
  def type; end
  include Dry::Types::Options
end
class Dry::Types::Default
  def call_safe(input = nil, &block); end
  def call_unsafe(input = nil); end
  def callable?; end
  def constrained(*args); end
  def default?; end
  def evaluate; end
  def initialize(type, value, **options); end
  def self.[](value); end
  def try(input); end
  def valid?(value = nil); end
  def value; end
  include Anonymous_Dry_Core_Equalizer_47
  include Dry::Core::Equalizer::Methods
  include Dry::Types::Builder
  include Dry::Types::Decorator
  include Dry::Types::Printable
  include Dry::Types::Type
end
class Dry::Types::Default::Callable < Dry::Types::Default
  def callable?; end
  def evaluate; end
  include Anonymous_Dry_Core_Equalizer_48
  include Dry::Core::Equalizer::Methods
end
module Anonymous_Dry_Core_Equalizer_48
  def cmp?(comparator, other); end
  def freeze; end
  def hash; end
end
module Anonymous_Dry_Core_Equalizer_47
  def cmp?(comparator, other); end
  def freeze; end
  def hash; end
end
class Dry::Types::Constrained
  def ===(value); end
  def call_safe(input, &block); end
  def call_unsafe(input); end
  def constrained(options); end
  def constrained?; end
  def constructor_type; end
  def decorate?(response); end
  def initialize(type, **options); end
  def lax; end
  def rule; end
  def to_ast(meta: nil); end
  def try(input, &block); end
  include Anonymous_Dry_Core_Equalizer_49
  include Dry::Core::Equalizer::Methods
  include Dry::Types::Builder
  include Dry::Types::Decorator
  include Dry::Types::Printable
  include Dry::Types::Type
end
class Dry::Types::Constrained::Coercible < Dry::Types::Constrained
  def call_safe(input); end
  def call_unsafe(input); end
  def try(input, &block); end
end
module Anonymous_Dry_Core_Equalizer_49
  def cmp?(comparator, other); end
  def freeze; end
  def hash; end
end
class Dry::Types::Enum
  def call_safe(input, &block); end
  def call_unsafe(input); end
  def default(*arg0); end
  def include?(input = nil); end
  def initialize(type, **options); end
  def inspect; end
  def inverted_mapping; end
  def map_value(input); end
  def mapping; end
  def to_ast(meta: nil); end
  def to_s; end
  def try(input); end
  def values; end
  include Anonymous_Dry_Core_Equalizer_50
  include Dry::Core::Equalizer::Methods
  include Dry::Types::Builder
  include Dry::Types::Decorator
  include Dry::Types::Type
end
module Anonymous_Dry_Core_Equalizer_50
  def cmp?(comparator, other); end
  def freeze; end
  def hash; end
end
class Dry::Types::Lax
  def [](input); end
  def call(input); end
  def call_safe(input); end
  def call_unsafe(input); end
  def decorate?(response); end
  def lax; end
  def to_ast(meta: nil); end
  def try(input, &block); end
  include Anonymous_Dry_Core_Equalizer_51
  include Dry::Core::Equalizer::Methods
  include Dry::Types::Builder
  include Dry::Types::Decorator
  include Dry::Types::Printable
  include Dry::Types::Type
end
module Anonymous_Dry_Core_Equalizer_51
  def cmp?(comparator, other); end
  def freeze; end
  def hash; end
end
module Anonymous_Dry_Core_Deprecations_Tagged_40
end
module Anonymous_Module_41
  def const_missing(missing); end
end
module Dry::Types::Meta
  def initialize(*args, meta: nil, **options); end
  def meta(data = nil); end
  def pristine; end
  def with(**options); end
end
class Dry::Types::Sum
  def call_safe(input, &block); end
  def call_unsafe(input); end
  def constrained(options); end
  def constrained?; end
  def default?; end
  def failure(input, _error = nil); end
  def initialize(left, right, **options); end
  def left; end
  def meta(data = nil); end
  def name; end
  def optional?; end
  def primitive?(value); end
  def right; end
  def success(input); end
  def to_ast(meta: nil); end
  def to_proc; end
  def try(input); end
  include Anonymous_Dry_Core_Equalizer_52
  include Dry::Core::Equalizer::Methods
  include Dry::Types::Builder
  include Dry::Types::Meta
  include Dry::Types::Options
  include Dry::Types::Printable
  include Dry::Types::Type
end
module Anonymous_Dry_Core_Equalizer_52
  def cmp?(comparator, other); end
  def freeze; end
  def hash; end
end
class Dry::Types::Sum::Constrained < Dry::Types::Sum
  def constrained?; end
  def rule; end
end
module Dry::Types::Builder
  def <<(constructor = nil, **options, &block); end
  def >>(constructor = nil, **options, &block); end
  def append(constructor = nil, **options, &block); end
  def constrained(options); end
  def constrained_type; end
  def constructor(constructor = nil, **options, &block); end
  def constructor_type; end
  def default(input = nil, options = nil, &block); end
  def enum(*values); end
  def fallback(value = nil, shared: nil, &_fallback); end
  def lax; end
  def optional; end
  def prepend(constructor = nil, **options, &block); end
  def |(other); end
  include Dry::Core::Constants
end
class Dry::Types::Result
  def initialize(input); end
  def input; end
  include Anonymous_Dry_Core_Equalizer_53
  include Dry::Core::Equalizer::Methods
end
module Anonymous_Dry_Core_Equalizer_53
  def cmp?(comparator, other); end
  def freeze; end
  def hash; end
  def inspect; end
end
class Dry::Types::Result::Success < Dry::Types::Result
  def failure?; end
  def success?; end
end
class Dry::Types::Result::Failure < Dry::Types::Result
  def error; end
  def failure?; end
  def initialize(input, error); end
  def success?; end
  def to_s; end
  include Anonymous_Dry_Core_Equalizer_54
  include Dry::Core::Equalizer::Methods
end
module Anonymous_Dry_Core_Equalizer_54
  def cmp?(comparator, other); end
  def freeze; end
  def hash; end
  def inspect; end
end
class Dry::Types::FnContainer
  def self.[](fn_name); end
  def self.container; end
  def self.register(function = nil, &block); end
  def self.register_name(function); end
end
class Dry::Types::Constructor < Dry::Types::Nominal
  def <<(new_fn = nil, **options, &block); end
  def >>(new_fn = nil, **options, &block); end
  def append(new_fn = nil, **options, &block); end
  def call_safe(input); end
  def call_unsafe(input); end
  def constrained_type; end
  def constructor(new_fn = nil, **options, &block); end
  def fn; end
  def initialize(type, fn: nil, **options); end
  def lax; end
  def method_missing(method, *args, &block); end
  def prepend(new_fn = nil, **options, &block); end
  def respond_to_missing?(meth, include_private = nil); end
  def self.[](type, fn:, **options); end
  def self.new(input, **options, &block); end
  def self.wrapper_type; end
  def to_ast(meta: nil); end
  def to_proc; end
  def try(input, &block); end
  def type; end
  include Anonymous_Dry_Core_Equalizer_55
  include Dry::Core::Equalizer::Methods
end
class Dry::Types::Constructor::Function
  def <<(other); end
  def >>(other); end
  def [](input, &block); end
  def arity; end
  def call(input, &block); end
  def fn; end
  def initialize(fn); end
  def self.[](fn); end
  def self.yields_block?(fn); end
  def to_ast; end
  def wrapper?; end
  include Anonymous_Dry_Core_Equalizer_56
  include Dry::Core::Equalizer::Methods
end
class Dry::Types::Constructor::Function::Safe < Dry::Types::Constructor::Function
  def call(input, &block); end
end
class Dry::Types::Constructor::Function::MethodCall < Dry::Types::Constructor::Function
  def initialize(fn); end
  def name; end
  def self.[](fn, safe); end
  def self.call_class(method, public, safe); end
  def target; end
  def to_ast; end
end
class Dry::Types::Constructor::Function::MethodCall::PublicCall < Dry::Types::Constructor::Function::MethodCall
  def self.call_interface(method, safe); end
end
class Dry::Types::Constructor::Function::MethodCall::PrivateCall < Dry::Types::Constructor::Function::MethodCall
  def call(input, &block); end
end
class Dry::Types::Constructor::Function::MethodCall::PrivateSafeCall < Dry::Types::Constructor::Function::MethodCall::PrivateCall
  def call(input, &block); end
end
class Dry::Types::Constructor::Function::Wrapper < Dry::Types::Constructor::Function
  def [](input, type, &block); end
  def arity; end
  def call(input, type, &block); end
end
module Anonymous_Dry_Core_Equalizer_56
  def cmp?(comparator, other); end
  def freeze; end
  def hash; end
  def inspect; end
end
module Dry::Types::Constructor::Wrapper
  def <<(new_fn = nil, **options, &block); end
  def >>(constructor = nil, **options, &block); end
  def __new__(type); end
  def append(constructor = nil, **options, &block); end
  def call_safe(input, &block); end
  def call_unsafe(input); end
  def constructor(constructor = nil, **options, &block); end
  def lax; end
  def prepend(new_fn = nil, **options, &block); end
  def try(input, &block); end
end
module Anonymous_Dry_Core_Equalizer_55
  def cmp?(comparator, other); end
  def freeze; end
  def hash; end
end
class Dry::Types::Array < Dry::Types::Nominal
  def constructor_type; end
  def of(type); end
end
class Dry::Types::Array::Constructor < Dry::Types::Constructor
  def constructor_type; end
  def lax; end
  def of(member); end
end
class Dry::Types::Array::Member < Dry::Types::Array
  def call_safe(input); end
  def call_unsafe(input); end
  def constructor_type; end
  def initialize(primitive, **options); end
  def lax; end
  def member; end
  def to_ast(meta: nil); end
  def try(input, &block); end
end
class Dry::Types::Hash < Dry::Types::Nominal
  def build_keys(type_map); end
  def constructor_type; end
  def key_name(key); end
  def map(key_type, value_type); end
  def permissive(*arg0); end
  def resolve_type(type); end
  def schema(keys_or_map, meta = nil); end
  def strict(*arg0); end
  def strict_with_defaults(*arg0); end
  def symbolized(*arg0); end
  def to_ast(meta: nil); end
  def transform_types?; end
  def weak(*arg0); end
  def with_type_transform(proc = nil, &block); end
end
class Dry::Types::Hash::Constructor < Dry::Types::Constructor
  def constructor_type; end
  def lax; end
  def schema(*args); end
end
class Dry::Types::Schema < Dry::Types::Hash
  def apply(hash, options = nil); end
  def call_safe(hash, options = nil); end
  def call_unsafe(hash, options = nil); end
  def clear; end
  def constrained?; end
  def each(&block); end
  def initialize(_primitive, **options); end
  def key(name, fallback = nil, &block); end
  def key?(name); end
  def keys; end
  def lax; end
  def merge(other); end
  def merge_keys(*keys); end
  def missing_key(key); end
  def name_key_map; end
  def resolve_missing_keys(hash, options); end
  def resolve_safe(hash, options = nil, &block); end
  def resolve_unsafe(hash, options = nil); end
  def schema(keys_or_map); end
  def strict(strict = nil); end
  def strict?; end
  def to_ast(meta: nil); end
  def transform_key; end
  def transform_keys?; end
  def try(input); end
  def unexpected_keys(hash_keys); end
  def with_key_transform(proc = nil, &block); end
  include Enumerable
end
class Dry::Types::Schema::Key
  def call_safe(input, &block); end
  def call_unsafe(input); end
  def decorate?(response); end
  def initialize(type, name, required: nil, **options); end
  def lax; end
  def meta(data = nil); end
  def name; end
  def omittable; end
  def optional; end
  def required(required = nil); end
  def required?; end
  def to_ast(meta: nil); end
  def try(input, &block); end
  extend Anonymous_Dry_Core_Deprecations_Tagged_57
  extend Dry::Core::Deprecations::Interface
  include Anonymous_Dry_Core_Equalizer_58
  include Dry::Core::Equalizer::Methods
  include Dry::Types::Builder
  include Dry::Types::Decorator
  include Dry::Types::Printable
  include Dry::Types::Type
end
module Anonymous_Dry_Core_Deprecations_Tagged_57
end
module Anonymous_Dry_Core_Equalizer_58
  def cmp?(comparator, other); end
  def freeze; end
  def hash; end
end
class Dry::Types::Map < Dry::Types::Nominal
  def call_safe(hash); end
  def call_unsafe(hash); end
  def coerce(input); end
  def constrained?; end
  def initialize(_primitive, key_type: nil, value_type: nil, meta: nil); end
  def key_type; end
  def name; end
  def to_ast(meta: nil); end
  def try(hash); end
  def value_type; end
end
class Dry::Types::Nominal
  def call_safe(input); end
  def call_unsafe(input); end
  def coerce(input, &_block); end
  def constrained?; end
  def default?; end
  def failure(input, error); end
  def initialize(primitive, **options); end
  def lax; end
  def name; end
  def optional?; end
  def primitive; end
  def primitive?(value); end
  def self.[](primitive); end
  def success(input); end
  def to_ast(meta: nil); end
  def to_proc; end
  def try(input); end
  def try_coerce(input); end
  include Anonymous_Dry_Core_Equalizer_59
  include Dry::Core::Equalizer::Methods
  include Dry::Types::Builder
  include Dry::Types::Meta
  include Dry::Types::Options
  include Dry::Types::Printable
  include Dry::Types::Type
end
module Anonymous_Dry_Core_Equalizer_59
  def cmp?(comparator, other); end
  def freeze; end
  def hash; end
end
module Anonymous_Dry_Core_Deprecations_Tagged_42
end
module Anonymous_Module_43
  def const_missing(missing); end
end
module Dry::Types::BuilderMethods
  def Array(type); end
  def Constant(object); end
  def Constructor(klass, cons = nil, &block); end
  def Hash(type_map); end
  def Instance(klass); end
  def Interface(*methods); end
  def Map(key_type, value_type); end
  def Nominal(klass); end
  def Strict(klass); end
  def Value(value); end
  def included(base); end
end
class Dry::Types::Module < Module
  def check_parameters(*namespaces, default: nil, **aliases); end
  def define_constants(constants, mod = nil); end
  def initialize(registry, *args, **kwargs); end
  def registry_tree; end
  def type_constants(*namespaces, default: nil, **aliases); end
end
module Anonymous_Module_44
  def inherited(klass); end
  def namespace(value = nil); end
end
class Dry::Types::CoercionError < StandardError
  def initialize(message, meta: nil, backtrace: nil); end
  def meta; end
  def self.handle(exception, meta: nil); end
end
class Dry::Types::MultipleError < Dry::Types::CoercionError
  def errors; end
  def initialize(errors); end
  def message; end
  def meta; end
end
class Dry::Types::SchemaError < Dry::Types::CoercionError
  def initialize(key, value, result); end
end
class Dry::Types::MapError < Dry::Types::CoercionError
end
class Dry::Types::SchemaKeyError < Dry::Types::CoercionError
end
class Dry::Types::MissingKeyError < Dry::Types::SchemaKeyError
  def initialize(key); end
  def key; end
end
class Dry::Types::UnknownKeysError < Dry::Types::SchemaKeyError
  def initialize(keys); end
  def keys; end
end
class Dry::Types::ConstraintError < Dry::Types::CoercionError
  def initialize(result, input); end
  def input; end
  def message; end
  def result; end
  def to_s; end
end
class Dry::Types::AnyClass < Dry::Types::Nominal
  def initialize(**options); end
  def name; end
  def self.name; end
  def to_ast(meta: nil); end
  def with(**new_options); end
end
module Dry::Types::Coercions
  def empty_str?(value); end
  def to_date(input, &block); end
  def to_date_time(input, &block); end
  def to_symbol(input, &block); end
  def to_time(input, &block); end
  include Dry::Core::Constants
end
module Dry::Types::Coercions::Params
  def self.to_ary(input, &_block); end
  def self.to_decimal(input, &_block); end
  def self.to_false(input, &_block); end
  def self.to_float(input, &block); end
  def self.to_hash(input, &_block); end
  def self.to_int(input, &block); end
  def self.to_nil(input, &_block); end
  def self.to_true(input, &_block); end
  extend Dry::Types::Coercions
end
module Dry::Types::Coercions::JSON
  def self.to_decimal(input, &_block); end
  def self.to_nil(input, &_block); end
  extend Dry::Types::Coercions
end
module Anonymous_Dry_Logic_Rule_Interface_60
  def [](input0, input1); end
  def call(input0, input1); end
end
class Dry::Logic::Rule::Predicate::Predicate2Arity < Dry::Logic::Rule::Predicate
  include Anonymous_Dry_Logic_Rule_Interface_60
end
module Anonymous_Dry_Logic_Rule_Interface_61
  def [](input0); end
  def call(input0); end
  def initialize(*arg0); end
end
class Dry::Logic::Rule::Predicate::Predicate2Arity1Curried < Dry::Logic::Rule::Predicate
  include Anonymous_Dry_Logic_Rule_Interface_61
end
class Dry::Types::Printer
  def call(type); end
  def visit(type, &block); end
  def visit_any(_); end
  def visit_array(type); end
  def visit_array_member(array); end
  def visit_callable(callable); end
  def visit_constrained(constrained); end
  def visit_constructor(constructor); end
  def visit_default(default); end
  def visit_enum(enum); end
  def visit_hash(hash); end
  def visit_key(key); end
  def visit_lax(lax); end
  def visit_map(map); end
  def visit_nominal(type); end
  def visit_options(options, meta = nil); end
  def visit_schema(schema); end
  def visit_sum(sum); end
  def visit_sum_constructors(sum); end
end
module Anonymous_Dry_Core_Deprecations_Tagged_45
end
class Dry::Types::Compiler
  def call(ast); end
  def compile_fn(fn); end
  def initialize(registry); end
  def registry; end
  def visit(node); end
  def visit_any(meta); end
  def visit_array(node); end
  def visit_constrained(node); end
  def visit_constructor(node); end
  def visit_enum(node); end
  def visit_hash(node); end
  def visit_json_array(node); end
  def visit_json_hash(node); end
  def visit_key(node); end
  def visit_lax(node); end
  def visit_map(node); end
  def visit_nominal(node); end
  def visit_params_array(node); end
  def visit_params_hash(node); end
  def visit_rule(node); end
  def visit_safe(*args, &block); end
  def visit_schema(node); end
  def visit_sum(node); end
  extend Anonymous_Dry_Core_Deprecations_Tagged_62
  extend Dry::Core::Deprecations::Interface
end
module Anonymous_Dry_Core_Deprecations_Tagged_62
end
class Dry::Types::PredicateRegistry
  def [](name); end
  def has_predicate; end
  def initialize(predicates = nil); end
  def key?(name); end
  def predicates; end
end
class Dry::Types::PredicateInferrer
  def [](type); end
  def compiler; end
  def initialize(registry = nil); end
  extend Dry::Core::Cache
  include Dry::Core::Cache::Methods
end
class Dry::Types::PredicateInferrer::Compiler
  def infer_predicate(type); end
  def initialize(registry); end
  def merge_predicates(nodes); end
  def registry; end
  def visit(node); end
  def visit_and(node); end
  def visit_any(_); end
  def visit_array(_); end
  def visit_constrained(node); end
  def visit_constructor(node); end
  def visit_enum(node); end
  def visit_hash(_); end
  def visit_lax(node); end
  def visit_nominal(node); end
  def visit_predicate(node); end
  def visit_schema(_); end
  def visit_sum(node); end
  extend Anonymous_Module_63
  extend Dry::Core::ClassAttributes
end
module Anonymous_Module_63
  def infer_predicate_by_class_name(value = nil); end
  def inherited(klass); end
end
class Dry::Types::PrimitiveInferrer
  def [](type); end
  def compiler; end
  def initialize; end
  extend Dry::Core::Cache
  include Dry::Core::Cache::Methods
end
class Dry::Types::PrimitiveInferrer::Compiler
  def visit(node); end
  def visit_any(_); end
  def visit_array(_); end
  def visit_constrained(node); end
  def visit_constructor(node); end
  def visit_enum(node); end
  def visit_hash(_); end
  def visit_lax(node); end
  def visit_nominal(node); end
  def visit_schema(_); end
  def visit_sum(node); end
end
