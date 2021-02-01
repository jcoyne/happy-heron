# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/dry-validation/all/dry-validation.rbi
#
# dry-validation-1.6.0

module Dry
end
module Dry::Validation
  def self.Contract(options = nil, &block); end
  def self.macros; end
  extend Dry::Core::Extensions
  extend Dry::Validation::Macros::Registrar
  include Dry::Core::Constants
end
class Dry::Validation::InvalidKeysError < StandardError
end
class Dry::Validation::MissingMessageError < StandardError
end
class Dry::Validation::DuplicateSchemaError < StandardError
end
class Dry::Validation::SchemaMissingError < StandardError
  def initialize(klass); end
end
class Dry::Validation::Function
  def map_keywords(block); end
  extend Dry::Initializer
  include Anonymous_Module_98
  include Dry::Initializer::Mixin::Root
end
module Anonymous_Module_98
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  def block; end
  def block_options; end
  extend Dry::Initializer::Mixin::Local
end
module Anonymous_Module_99
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(name, *arg1, **__dry_initializer_options__); end
  def args; end
  def block; end
  def name; end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Validation::Macro < Dry::Validation::Function
  def extract_block_options(options); end
  def with(args); end
  include Anonymous_Module_99
end
module Dry::Validation::Macros
  def self.[](name); end
  def self.container; end
  def self.register(name, *args, &block); end
end
module Dry::Validation::Macros::Registrar
  def register_macro(name, *args, &block); end
end
class Dry::Validation::Macros::Container
  def config; end
  def register(name, *args, &block); end
  extend Dry::Configurable
  extend Dry::Configurable::ClassMethods
  include Dry::Container::Mixin
end
class Dry::Validation::Config < Dry::Schema::Config
  def dup; end
end
module Anonymous_Module_100
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  def keys; end
  def macros; end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Validation::Rule < Dry::Validation::Function
  def add_macro_from_hash(macros, spec); end
  def call(contract, result); end
  def each(*macros, &block); end
  def inspect; end
  def parse_macros(*args); end
  def validate(*macros, &block); end
  include Anonymous_Dry_Equalizer_101
  include Anonymous_Module_100
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_101
  def cmp?(comparator, other); end
  def hash; end
end
class Dry::Validation::Failures
  def empty?; end
  def failure(message, tokens = nil); end
  def initialize(path = nil); end
  def opts; end
  def path; end
end
class Dry::Validation::Evaluator
  def _options; end
  def base; end
  def error?(*args, &block); end
  def failures; end
  def initialize(contract, **options, &block); end
  def key(path = nil); end
  def key?(name = nil); end
  def key_name; end
  def method_missing(meth, *args, &block); end
  def respond_to_missing?(meth, include_private = nil); end
  def rule_error?(path = nil); end
  def schema_error?(path); end
  def value; end
  def with(new_opts, &block); end
  extend Anonymous_Dry_Core_Deprecations_Tagged_103
  extend Dry::Core::Deprecations::Interface
  extend Dry::Initializer
  include Anonymous_Module_102
  include Dry::Initializer::Mixin::Root
end
module Anonymous_Module_102
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(_contract, *arg1, **__dry_initializer_options__); end
  def _context; end
  def _contract; end
  def block_options; end
  def keys; end
  def macros; end
  def path; end
  def result; end
  def values; end
  extend Dry::Initializer::Mixin::Local
end
module Anonymous_Dry_Core_Deprecations_Tagged_103
end
module Anonymous_Module_104
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Validation::Message < Dry::Schema::Message
  def base?; end
  def initialize(text, path:, meta: nil); end
  def meta; end
  def path; end
  def self.[](text, path, meta); end
  def text; end
  def to_s; end
  include Anonymous_Dry_Equalizer_105
  include Anonymous_Module_104
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_105
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
module Anonymous_Module_106
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Validation::Message::Localized < Dry::Validation::Message
  def evaluate(**opts); end
  include Anonymous_Module_106
end
module Dry::Validation::Messages
end
class Dry::Validation::Messages::Resolver
  def [](message:, tokens:, path:, meta: nil); end
  def call(message:, tokens:, path:, meta: nil); end
  def initialize(messages); end
  def key_text(path:, locale: nil); end
  def message(rule, path:, tokens: nil, locale: nil, full: nil); end
  def message_text(text, path:, locale: nil, full: nil); end
  def messages; end
  def parse_token(token); end
  def parse_tokens(tokens); end
end
class Dry::Validation::MessageSet < Dry::Schema::MessageSet
  def add(message); end
  def filter(*predicates); end
  def freeze; end
  def initialize(messages, options = nil); end
  def locale; end
  def source_messages; end
  def with(other, new_options = nil); end
end
class Dry::Validation::Values
  def [](*args); end
  def data; end
  def initialize(data); end
  def key?(key, hash = nil); end
  def method_missing(meth, *args, &block); end
  def respond_to_missing?(meth, include_private = nil); end
  include Anonymous_Dry_Equalizer_107
  include Dry::Equalizer::Methods
  include Enumerable
end
module Anonymous_Dry_Equalizer_107
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Validation::Result
  def [](key); end
  def add_error(error); end
  def base_error?(key); end
  def context; end
  def deconstruct; end
  def deconstruct_keys(keys); end
  def error?(key); end
  def errors(new_options = nil); end
  def failure?; end
  def freeze; end
  def initialize(schema_result, context, options); end
  def initialize_errors(options = nil); end
  def inspect; end
  def key?(key); end
  def options; end
  def rule_error?(key); end
  def schema_error?(key); end
  def schema_errors(options); end
  def schema_result; end
  def self.new(schema_result, context = nil, options = nil); end
  def success?; end
  def to_h; end
  def values; end
  include Anonymous_Dry_Equalizer_108
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_108
  def cmp?(comparator, other); end
  def hash; end
end
module Dry::Schema
end
class Dry::Schema::Path
  def expand; end
  def multi_value?; end
end
class Dry::Validation::Contract
  def call(input, context = nil); end
  def error?(result, spec); end
  def inspect; end
  def macro(name, *args); end
  def messages; end
  extend Dry::Initializer
  extend Dry::Validation::Contract::ClassInterface
  include Anonymous_Dry_Equalizer_109
  include Anonymous_Module_110
  include Dry::Equalizer::Methods
  include Dry::Initializer::Mixin::Root
end
module Dry::Validation::Contract::ClassInterface
  def __schema__; end
  def build(options = nil, &block); end
  def config; end
  def core_schema_opts; end
  def define(method_name, external_schemas, &block); end
  def ensure_valid_keys(*keys); end
  def inherited(klass); end
  def json(*external_schemas, &block); end
  def key_map; end
  def key_paths(keys); end
  def macros; end
  def messages; end
  def params(*external_schemas, &block); end
  def rule(*keys, &block); end
  def rules; end
  def schema(*external_schemas, &block); end
  include Dry::Validation::Macros::Registrar
end
module Anonymous_Dry_Equalizer_109
  def cmp?(comparator, other); end
  def hash; end
end
module Anonymous_Module_110
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  def config; end
  def default_context; end
  def macros; end
  def message_resolver; end
  def rules; end
  def schema; end
  extend Dry::Initializer::Mixin::Local
end
