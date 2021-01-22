# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/dry-configurable/all/dry-configurable.rbi
#
# dry-configurable-0.12.0

module Dry
end
module Dry::Configurable
  def self.extended(klass); end
  def self.included(klass); end
  include Dry::Core::Constants
end
class Dry::Configurable::Error < StandardError
end
class Dry::Configurable::AlreadyIncluded < Dry::Configurable::Error
end
class Dry::Configurable::FrozenConfig < Dry::Configurable::Error
end
class Dry::Configurable::Config
  def [](name); end
  def []=(name, value); end
  def _resolved; end
  def _settings; end
  def finalize!; end
  def initialize(settings); end
  def initialize_copy(source); end
  def method_missing(meth, *args); end
  def pristine; end
  def resolve(meth); end
  def respond_to_missing?(meth, include_private = nil); end
  def to_h; end
  def to_hash; end
  def update(values); end
  def values; end
  include Anonymous_Dry_Core_Equalizer_37
  include Dry::Core::Equalizer::Methods
end
module Anonymous_Dry_Core_Equalizer_37
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Configurable::Setting
  def constructor; end
  def default; end
  def evaluate; end
  def evaluated?; end
  def initialize(name, input: nil, default: nil, **options); end
  def initialize_copy(source); end
  def input; end
  def input_defined?; end
  def name; end
  def nested(settings); end
  def options; end
  def pristine; end
  def reader?; end
  def self.clonable_value?(value); end
  def value; end
  def with(new_opts); end
  def writer?(meth); end
  def writer_name; end
  include Anonymous_Dry_Core_Equalizer_38
  include Dry::Core::Equalizer::Methods
end
module Anonymous_Dry_Core_Equalizer_38
  def cmp?(comparator, other); end
  def hash; end
end
class Dry::Configurable::Setting::Nested < Dry::Configurable::Setting
  def constructor; end
  def pristine; end
end
class Dry::Configurable::Settings
  def <<(setting); end
  def [](name); end
  def each(&block); end
  def elements; end
  def initialize(elements = nil); end
  def initialize_copy(source); end
  def initialize_elements(elements); end
  def key?(name); end
  def keys; end
  def pristine; end
  include Anonymous_Dry_Core_Equalizer_39
  include Dry::Core::Equalizer::Methods
  include Enumerable
end
module Anonymous_Dry_Core_Equalizer_39
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Configurable::Compiler
  def call(ast); end
  def visit(node); end
  def visit_constructor(node); end
  def visit_nested(node); end
  def visit_setting(node); end
end
class Dry::Configurable::DSL
  def ast; end
  def compiler; end
  def initialize(&block); end
  def setting(name, *args, &block); end
end
class Dry::Configurable::DSL::Args
  def args; end
  def default; end
  def ensure_valid_options; end
  def initialize(args); end
  def options; end
  def opts; end
  def size; end
  def to_ary; end
end
module Dry::Configurable::Methods
  def configure(&block); end
  def finalize!; end
end
module Dry::Configurable::ClassMethods
  def __config_dsl__; end
  def __config_reader__; end
  def _settings; end
  def config; end
  def inherited(klass); end
  def setting(*args, &block); end
  def settings; end
  include Dry::Configurable::Methods
end
module Dry::Configurable::InstanceMethods
  def config; end
  def finalize!; end
  def initialize(*arg0); end
  def initialize_copy(source); end
  include Dry::Configurable::Methods
end
