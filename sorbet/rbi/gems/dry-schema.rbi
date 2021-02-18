# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/dry-schema/all/dry-schema.rbi
#
# dry-schema-1.6.1

module Dry
end
module Dry::Schema
  def self.Form(**options, &block); end
  def self.JSON(**options, &block); end
  def self.Params(**options, &block); end
  def self.config; end
  def self.define(**options, &block); end
  extend Dry::Core::Extensions
  include Dry::Core::Constants
end
class Dry::Schema::InvalidSchemaError < StandardError
end
class Dry::Schema::MissingMessageError < StandardError
  def initialize(path, paths = nil); end
end
class Dry::Schema::Path
  def &(other); end
  def <=>(other); end
  def each(&block); end
  def include?(other); end
  def index(key); end
  def index?; end
  def initialize(keys); end
  def key_matches(other, meth = nil); end
  def keys; end
  def last; end
  def root(*arg0); end
  def same_root?(other); end
  def self.[](spec); end
  def self.call(spec); end
  def self.keys_from_hash(hash); end
  def to_h(value = nil); end
  def without_index; end
  include Anonymous_Dry_Equalizer_113
  include Comparable
  include Dry::Equalizer::Methods
  include Enumerable
end
module Anonymous_Dry_Equalizer_113
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Schema::PredicateRegistry < Dry::Types::PredicateRegistry
  def arg_list(name, *values); end
end
class Dry::Schema::TypeContainer
  def config; end
  def initialize(*args, &block); end
  def registered?(key); end
  extend Dry::Configurable
  extend Dry::Configurable::ClassMethods
  include Dry::Container::Mixin
end
class Dry::Schema::Config
  def inspect; end
  def method_missing(meth, *args, &block); end
  def respond_to_missing?(meth, include_private = nil); end
  extend Dry::Configurable::ClassMethods
  include Anonymous_Dry_Equalizer_114
  include Dry::Configurable
  include Dry::Configurable::InstanceMethods
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_114
  def cmp?(comparator, other); end
  def hash; end
end
class Dry::Schema::Message
  def <=>(other); end
  def _path; end
  def dump; end
  def eql?(other); end
  def to_h; end
  def to_or(root); end
  def to_s; end
  extend Dry::Initializer
  include Anonymous_Dry_Equalizer_115
  include Anonymous_Module_116
  include Dry::Equalizer::Methods
  include Dry::Initializer::Mixin::Root
end
module Dry::Schema::Message::Or
  def self.[](left, right, messages); end
end
class Dry::Schema::Message::Or::Abstract
  def initialize(left, right); end
  def left; end
  def right; end
end
class Dry::Schema::Message::Or::SinglePath < Dry::Schema::Message::Or::Abstract
  def _path; end
  def dump; end
  def initialize(*args, messages); end
  def messages; end
  def path; end
  def to_a; end
  def to_h; end
  def to_s; end
end
class Dry::Schema::Message::Or::MultiPath < Dry::Schema::Message::Or::Abstract
  def initialize(*args); end
  def root; end
  def to_h; end
end
module Anonymous_Dry_Equalizer_115
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
module Anonymous_Module_116
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  def args; end
  def input; end
  def meta; end
  def path; end
  def predicate; end
  def text; end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::MessageCompiler
  def append_mapped_size_tokens(tokens); end
  def call(ast); end
  def default_lookup_options; end
  def initialize(messages, **options); end
  def lookup_options(arg_vals:, input:); end
  def message_text(template, tokens, options); end
  def message_tokens(args); end
  def message_type(*arg0); end
  def options; end
  def or_translator; end
  def visit(node, opts = nil); end
  def visit_and(node, opts); end
  def visit_failure(node, opts); end
  def visit_hint(*arg0); end
  def visit_implication(node, *args); end
  def visit_key(node, opts); end
  def visit_namespace(node, opts); end
  def visit_not(node, opts); end
  def visit_or(node, opts); end
  def visit_predicate(node, opts); end
  def visit_set(node, opts); end
  def visit_unexpected_key(node, opts); end
  def visit_xor(node, opts); end
  def with(new_options); end
  extend Dry::Initializer
  include Anonymous_Module_117
  include Dry::Initializer::Mixin::Root
end
class Dry::Schema::MessageCompiler::VisitorOpts < Hash
  def call(other); end
  def current_messages; end
  def dup(current_messages = nil); end
  def failures; end
  def hints; end
  def key_failure?(path); end
  def path; end
  def self.new; end
end
class Dry::Schema::MessageSet
  def [](key); end
  def combine_message_hashes(hashes); end
  def combine_message_values(values); end
  def each(&block); end
  def empty?; end
  def fetch(key); end
  def freeze; end
  def initialize(messages, options = nil); end
  def messages; end
  def messages_map(messages = nil); end
  def options; end
  def partition_message_values(values); end
  def self.[](messages, options = nil); end
  def to_h; end
  def to_hash; end
  include Anonymous_Dry_Equalizer_118
  include Dry::Equalizer::Methods
  include Enumerable
end
module Anonymous_Dry_Equalizer_118
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
module Anonymous_Module_117
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(messages, *arg1, **__dry_initializer_options__); end
  def full; end
  def locale; end
  def messages; end
  def predicate_resolvers; end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::NamespacedRule
  def ast(input = nil); end
  def call(input); end
  def initialize(namespace, rule); end
  def namespace; end
  def rule; end
  def to_ast(input = nil); end
end
class Dry::Schema::Compiler < Dry::Logic::RuleCompiler
  def self.new(predicates = nil); end
  def supports?(predicate); end
  def visit_and(node); end
  def visit_namespace(node, _opts = nil); end
end
module Dry::Schema::Types
  extend Anonymous_Dry_Core_Deprecations_Tagged_119
  extend Anonymous_Module_120
  extend Dry::Core::Deprecations::Interface
  extend Dry::Types::BuilderMethods
  include Anonymous_Dry_Types_Module_121
end
module Dry::Schema::Types::Definition
end
module Anonymous_Dry_Types_Module_121
  def self.included(base); end
  extend Dry::Types::BuilderMethods
end
module Anonymous_Dry_Core_Deprecations_Tagged_119
end
module Anonymous_Module_120
  def const_missing(missing); end
end
class Dry::Schema::Predicate
  def !; end
  def args; end
  def ast(*arg0); end
  def block; end
  def compiler; end
  def ensure_valid; end
  def initialize(compiler, name, args, block); end
  def name; end
  def to_ast(*arg0); end
  def to_rule; end
  include Anonymous_Dry_Equalizer_122
  include Dry::Equalizer::Methods
  include Dry::Logic::Operators
end
class Dry::Schema::Predicate::Negation
  def ast(*args); end
  def initialize(predicate); end
  def predicate; end
  def to_ast(*args); end
  include Dry::Logic::Operators
end
module Anonymous_Dry_Equalizer_122
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Schema::Trace < BasicObject
  def <<(op); end
  def append(op); end
  def captures; end
  def class; end
  def compiler; end
  def evaluate(*args, **opts); end
  def evaluate_predicates(predicates); end
  def initialize(compiler = nil); end
  def method_missing(meth, *args, &block); end
  def reduced_rule; end
  def to_ast; end
  def to_rule(name = nil); end
  include Anonymous_Dry_Equalizer_123
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_123
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
module Dry::Schema::Macros
end
class Dry::Schema::Macros::Core
  def ast(*arg0); end
  def new(**options); end
  def operation; end
  def path; end
  def to_ast(*arg0); end
  def to_rule; end
  extend Dry::Initializer
  include Anonymous_Module_124
  include Dry::Initializer::Mixin::Root
end
module Anonymous_Module_124
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  def compiler; end
  def name; end
  def schema_dsl; end
  def trace; end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::PredicateInferrer < Dry::Types::PredicateInferrer
  def initialize(registry = nil); end
end
class Dry::Schema::PredicateInferrer::Compiler < Dry::Types::PredicateInferrer::Compiler
end
class Dry::Schema::PrimitiveInferrer < Dry::Types::PrimitiveInferrer
  def initialize; end
end
class Dry::Schema::PrimitiveInferrer::Compiler < Dry::Types::PrimitiveInferrer::Compiler
end
module Anonymous_Module_125
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  def chain; end
  def predicate_inferrer; end
  def primitive_inferrer; end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Macros::DSL < Dry::Schema::Macros::Core
  def append_macro(macro_type); end
  def array(*args, &block); end
  def custom_type?; end
  def each(*args, &block); end
  def extract_type_spec(*args, nullable: nil, set_type: nil); end
  def filled(*args, &block); end
  def hash(*args, &block); end
  def resolve_type(type_spec, nullable); end
  def schema(*args, &block); end
  def schema_or_predicate?(arg); end
  def type(spec); end
  def value(*predicates, &block); end
  include Anonymous_Module_125
  include Dry::Logic::Operators
end
module Anonymous_Module_126
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Macros::Array < Dry::Schema::Macros::DSL
  def ast(*arg0); end
  def to_ast(*arg0); end
  def value(*args, **opts, &block); end
  include Anonymous_Module_126
end
module Anonymous_Module_127
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Macros::Each < Dry::Schema::Macros::DSL
  def ast(*arg0); end
  def to_ast(*arg0); end
  def value(*args, **opts); end
  include Anonymous_Module_127
end
module Anonymous_Module_128
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Macros::Value < Dry::Schema::Macros::DSL
  def array_type?(type); end
  def build_array_type(array_type, member); end
  def call(*predicates, **opts, &block); end
  def hash_type?(type); end
  def import_steps(schema); end
  def maybe_type?(type); end
  def method_missing(meth, *args, &block); end
  def respond_to_missing?(meth, include_private = nil); end
  include Anonymous_Module_128
end
module Anonymous_Module_129
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Macros::Filled < Dry::Schema::Macros::Value
  def call(*predicates, **opts, &block); end
  def ensure_valid_predicates(predicates); end
  def expected_primitives; end
  def filter_empty_string?; end
  def processor_config; end
  def schema_type; end
  include Anonymous_Module_129
end
module Anonymous_Module_130
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Macros::Schema < Dry::Schema::Macros::Value
  def call(*args, &block); end
  def define(*args, &block); end
  def hash_type; end
  def optional?; end
  def parent_type; end
  def process_operation(op); end
  def redefined_schema?(args); end
  def schema?; end
  include Anonymous_Module_130
end
module Anonymous_Module_131
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Macros::Hash < Dry::Schema::Macros::Schema
  def call(*args, &block); end
  include Anonymous_Module_131
end
module Anonymous_Module_132
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Macros::Maybe < Dry::Schema::Macros::DSL
  def call(*args, **opts, &block); end
  def to_ast; end
  include Anonymous_Module_132
end
class Dry::Schema::TypeRegistry
  def [](name); end
  def initialize(types, namespace = nil); end
  def namespace; end
  def namespaced(ns); end
  def self.new(types = nil, namespace = nil); end
  def types; end
end
class Dry::Schema::Step
  def call(result); end
  def executor; end
  def initialize(type:, name:, executor:); end
  def name; end
  def scoped(path); end
  def type; end
  def validate_name(name); end
end
class Dry::Schema::Step::Scoped
  def call(result); end
  def initialize(path, step); end
  def path; end
  def scoped(new_path); end
  def step; end
end
class Dry::Schema::ProcessorSteps
  def [](name); end
  def []=(name, value); end
  def after(name, &block); end
  def before(name, &block); end
  def call(result); end
  def import_callbacks(path, other); end
  def key_map; end
  def merge(other); end
  def merge_callbacks(left, right); end
  def rule_applier; end
  def type_schema; end
  extend Dry::Initializer
  include Anonymous_Module_133
  include Dry::Initializer::Mixin::Root
end
module Anonymous_Module_133
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  def after_steps; end
  def before_steps; end
  def steps; end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Result
  def [](name); end
  def add_error(node); end
  def at(path, &block); end
  def concat(other); end
  def deconstruct_keys(_); end
  def error?(spec); end
  def errors(options = nil); end
  def failure?; end
  def inspect; end
  def key?(name); end
  def message_set(options = nil); end
  def new(output, **opts, &block); end
  def replace(hash); end
  def result_ast; end
  def self.new(*arg0, **arg1); end
  def success?; end
  def to_h; end
  def update(hash); end
  extend Dry::Initializer
  include Anonymous_Dry_Equalizer_134
  include Anonymous_Module_135
  include Dry::Equalizer::Methods
  include Dry::Initializer::Mixin::Root
end
module Anonymous_Dry_Equalizer_134
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
module Anonymous_Module_135
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(output, results = nil, *arg2, **__dry_initializer_options__); end
  def message_compiler; end
  def output; end
  def parent; end
  def results; end
  extend Dry::Initializer::Mixin::Local
end
module Dry::Schema::Messages
  def self.setup(config); end
  def setup(config); end
end
class Dry::Schema::Messages::Template
  def [](data = nil); end
  def call(data = nil); end
  def data(data = nil); end
  def ensure_message!; end
  extend Dry::Initializer
  include Anonymous_Dry_Equalizer_137
  include Anonymous_Module_136
  include Dry::Equalizer::Methods
  include Dry::Initializer::Mixin::Root
end
module Anonymous_Module_136
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  def key; end
  def messages; end
  def options; end
  extend Dry::Initializer::Mixin::Local
end
module Anonymous_Dry_Equalizer_137
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Schema::Messages::Abstract
  def [](predicate, options); end
  def call(predicate, options); end
  def custom_top_namespace?(path); end
  def default_locale; end
  def filled_lookup_paths(tokens); end
  def interpolatable_data(_key, _options, **_data); end
  def interpolate(_key, _options, **_data); end
  def key?(_key, _options = nil); end
  def looked_up_paths(predicate, options); end
  def lookup_paths(predicate, options); end
  def lookup_tokens(predicate, options); end
  def namespaced(namespace); end
  def root; end
  def rule(name, options = nil); end
  def rule_lookup_paths(tokens); end
  def self.build(options = nil); end
  def translate(key, locale: nil); end
  extend Dry::Configurable::ClassMethods
  include Anonymous_Dry_Equalizer_138
  include Dry::Configurable
  include Dry::Configurable::InstanceMethods
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_138
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Schema::Messages::Namespaced < Dry::Schema::Messages::Abstract
  def [](key, options = nil); end
  def cache_key(predicate, options); end
  def call(key, options = nil); end
  def call_opts; end
  def config; end
  def filled_lookup_paths(tokens); end
  def get(key, options = nil); end
  def initialize(namespace, messages); end
  def interpolatable_data(key, options, **data); end
  def interpolate(key, options, **data); end
  def key?(key, *args); end
  def messages; end
  def namespace; end
  def rule_lookup_paths(tokens); end
end
class Dry::Schema::Messages::YAML < Dry::Schema::Messages::Abstract
  def cache; end
  def data; end
  def evaluated_key(key, options); end
  def evaluation_context(key, options); end
  def get(key, options = nil); end
  def initialize(data: nil, config: nil); end
  def interpolatable_data(key, options, **data); end
  def interpolate(key, options, **data); end
  def key?(key, options = nil); end
  def load_translations(path); end
  def looked_up_paths(predicate, options); end
  def merge(overrides); end
  def prepare; end
  def self.build(options = nil); end
  def self.cache; end
  def self.flat_hash(hash, path = nil, keys = nil); end
  def t; end
  include Anonymous_Dry_Equalizer_139
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_139
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Schema::Messages::I18n < Dry::Schema::Messages::Abstract
  def default_locale; end
  def get(key, options = nil); end
  def initialize; end
  def interpolatable_data(_key, _options, **data); end
  def interpolate(key, options, **data); end
  def key?(key, options); end
  def merge(paths); end
  def prepare(paths = nil); end
  def store_translations(data); end
  def t; end
end
class Dry::Schema::RuleApplier
  def call(input); end
  def to_ast; end
  extend Dry::Initializer
  include Anonymous_Module_140
  include Dry::Initializer::Mixin::Root
end
module Anonymous_Module_140
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(rules, *arg1, **__dry_initializer_options__); end
  def config; end
  def message_compiler; end
  def rules; end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::KeyCoercer
  def [](result); end
  def call(result); end
  def coercer; end
  def initialize(key_map, &coercer); end
  def key_map; end
  def self.new(*args, &coercer); end
  def self.symbolized(*args); end
  extend Dry::Core::Cache
  include Anonymous_Dry_Equalizer_141
  include Dry::Core::Cache::Methods
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_141
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Schema::ValueCoercer
  def call(input); end
  extend Dry::Initializer
  include Anonymous_Dry_Equalizer_143
  include Anonymous_Module_142
  include Dry::Equalizer::Methods
  include Dry::Initializer::Mixin::Root
end
module Anonymous_Module_142
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(type_schema, *arg1); end
  def type_schema; end
  extend Dry::Initializer::Mixin::Local
end
module Anonymous_Dry_Equalizer_143
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Schema::Processor
  def [](input); end
  def ^(other); end
  def ast(*arg0); end
  def call(input); end
  def config; end
  def filter_rules?; end
  def filter_schema; end
  def inspect; end
  def key_map; end
  def merge(other); end
  def message_compiler; end
  def rule_applier; end
  def rules; end
  def self.define(&block); end
  def self.definition; end
  def self.new(options = nil, &block); end
  def to_ast(*arg0); end
  def to_proc; end
  def to_rule; end
  def type_schema; end
  def xor(other); end
  extend Dry::Configurable
  extend Dry::Configurable::ClassMethods
  extend Dry::Initializer
  include Anonymous_Module_144
  include Dry::Initializer::Mixin::Root
  include Dry::Logic::Operators
end
module Anonymous_Module_144
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  def schema_dsl; end
  def steps; end
  extend Dry::Initializer::Mixin::Local
end
module Anonymous_Module_145
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  def filter_schema_dsl; end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Macros::Key < Dry::Schema::Macros::DSL
  def filled(*args, **opts, &block); end
  def filter(*args, &block); end
  def maybe(*args, **opts, &block); end
  def to_ast; end
  def to_rule; end
  def value(*args, **opts, &block); end
  include Anonymous_Module_145
end
module Anonymous_Module_146
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Macros::Optional < Dry::Schema::Macros::Key
  def operation; end
  def to_rule; end
  include Anonymous_Module_146
end
module Anonymous_Module_147
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Macros::Required < Dry::Schema::Macros::Key
  def operation; end
  include Anonymous_Module_147
end
class Dry::Schema::Key
  def coerced_name; end
  def coercer; end
  def coercible(&coercer); end
  def dump; end
  def id; end
  def initialize(id, name: nil, coercer: nil); end
  def name; end
  def new(**new_opts); end
  def read(source); end
  def self.[](name, **opts); end
  def self.new(*args, **kwargs); end
  def stringified; end
  def to_dot_notation; end
  def write(source, target); end
  extend Dry::Core::Cache
  include Anonymous_Dry_Equalizer_148
  include Dry::Core::Cache::Methods
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_148
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Schema::Key::Hash < Dry::Schema::Key
  def coercible(&coercer); end
  def dump; end
  def initialize(id, members:, **opts); end
  def members; end
  def read(source); end
  def stringified; end
  def to_dot_notation; end
  def write(source, target); end
  include Anonymous_Dry_Equalizer_149
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_149
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Schema::Key::Array < Dry::Schema::Key
  def coercible(&coercer); end
  def dump; end
  def initialize(id, member:, **opts); end
  def member; end
  def stringified; end
  def to_dot_notation; end
  def write(source, target); end
  include Anonymous_Dry_Equalizer_150
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_150
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Schema::KeyMap
  def +(other); end
  def coercible(&coercer); end
  def dump; end
  def each(&block); end
  def initialize(keys); end
  def inspect; end
  def keys; end
  def self.[](*keys); end
  def self.new(*args); end
  def stringified; end
  def to_dot_notation; end
  def write(source, target = nil); end
  extend Dry::Core::Cache
  include Anonymous_Dry_Equalizer_151
  include Dry::Core::Cache::Methods
  include Dry::Equalizer::Methods
  include Enumerable
end
module Anonymous_Dry_Equalizer_151
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Schema::KeyValidator
  def call(result); end
  def key_paths(hash); end
  extend Dry::Initializer
  include Anonymous_Module_152
  include Dry::Initializer::Mixin::Root
end
module Anonymous_Module_152
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  def key_map; end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::DSL
  def [](name); end
  def after(key, &block); end
  def array; end
  def before(key, &block); end
  def call; end
  def configure(&block); end
  def custom_type?(name); end
  def default_config; end
  def filter_rules?; end
  def filter_schema; end
  def filter_schema_dsl; end
  def key(name, macro:, &block); end
  def key_coercer; end
  def key_map(types = nil); end
  def key_map_type; end
  def key_spec(name, type); end
  def key_validator; end
  def merge(other); end
  def new(**options, &block); end
  def optional(name, &block); end
  def parent; end
  def parent_filter_schemas; end
  def parent_key_map; end
  def parent_rules; end
  def required(name, &block); end
  def resolve_type(spec); end
  def rule_applier; end
  def rules; end
  def self.new(**options, &block); end
  def set_type(name, spec); end
  def to_rule; end
  def type_registry; end
  def type_schema; end
  def value_coercer; end
  extend Dry::Initializer
  include Anonymous_Module_153
  include Dry::Initializer::Mixin::Root
end
module Anonymous_Module_153
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  def compiler; end
  def config; end
  def macros; end
  def parents; end
  def path; end
  def processor_type; end
  def steps; end
  def types; end
  extend Dry::Initializer::Mixin::Local
end
module Anonymous_Module_154
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Params < Dry::Schema::Processor
  include Anonymous_Module_154
end
module Anonymous_Module_155
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::JSON < Dry::Schema::Processor
  include Anonymous_Module_155
end
