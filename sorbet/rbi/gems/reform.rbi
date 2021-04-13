# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/reform/all/reform.rbi
#
# reform-2.5.0

module Reform
end
class Reform::Contract < Disposable::Twin
  def self.clone; end
  def self.default_nested_class; end
  def self.options_for(name); end
  def self.properties(*args); end
  def self.property(name, options = nil, &block); end
  extend Disposable::Twin::Default::ClassMethods
  extend Disposable::Twin::Expose::ClassMethods
  extend Disposable::Twin::Sync::ToNestedHash::ClassMethods
  extend Reform::Validation::ClassMethods
  include Disposable::Twin::Default
  include Disposable::Twin::Expose
  include Disposable::Twin::Setup
  include Disposable::Twin::Setup::SkipSetter
  include Disposable::Twin::Sync
  include Reform::Contract::Readonly
  include Reform::Contract::Validate
  include Reform::Validation
end
class Reform::Contract::CustomError
  def errors(**_args); end
  def failure?; end
  def hint; end
  def initialize(key, error_text, results); end
  def merge!; end
  def messages; end
  def success?; end
end
class Reform::Contract::Result
  def add_error(key, error_text); end
  def errors(*args); end
  def failure?; end
  def filter_for(method, *args); end
  def hints(*args); end
  def initialize(results, nested_results = nil); end
  def messages(*args); end
  def success?; end
  def to_results; end
end
class Reform::Contract::Result::Pointer
  def advance(*path); end
  def errors(*args); end
  def failure?(*args, &block); end
  def hints(*args); end
  def initialize(result, path); end
  def messages(*args); end
  def success?(*args, &block); end
  def traverse(hash, path); end
  def traverse_for(method, *args); end
  extend Forwardable
end
module Reform::Contract::Validate
  def custom_errors; end
  def errors(*args); end
  def initialize(*arg0); end
  def to_result; end
  def validate!(name, pointers = nil); end
  def validate; end
  def validate_nested!(pointers); end
end
module Reform::Validation
  def self.included(includer); end
  def valid?; end
end
class Reform::Validation::Groups < Array
  def [](name); end
  def add(name, options); end
  def index_for(options); end
  def initialize(group_class); end
end
class Reform::Validation::Groups::Validate
  def self.call(groups, form); end
  def self.evaluate?(depends_on, results, form); end
end
module Reform::Validation::ClassMethods
  def deprecate_validation_positional_args(name, options); end
  def validation(name = nil, options = nil, &block); end
  def validation_group_class; end
  def validation_groups; end
end
class Reform::Validation::NoValidationLibraryError < RuntimeError
end
module Reform::Contract::Readonly
  def options_for(name); end
  def readonly?(name); end
end
module Reform::Form::Validate
  def deserialize!(params); end
  def deserialize(params); end
  def deserializer!(source = nil, options = nil); end
  def deserializer(*args); end
  def input_params; end
  def self.included(includer); end
  def validate(params); end
end
module Reform::Form::Validate::Skip
end
class Reform::Form::Validate::Skip::AllBlank
  def call(form, options); end
  include Uber::Callable
end
class Reform::Form::Populator
  def call!(options); end
  def call(input, options); end
  def get(options); end
  def handle_fail(twin, options); end
  def initialize(user_proc); end
end
class Reform::Form::Populator::IfEmpty < Reform::Form::Populator
  def call!(options); end
  def deprecate_positional_args(form, proc, options); end
  def run!(form, fragment, options); end
end
class Reform::Form::Populator::Sync < Reform::Form::Populator
  def call!(options); end
end
class Reform::Form::Populator::External
  def call(input, options); end
end
module Reform::Form::Prepopulate
  def prepopulate!(options = nil); end
  def prepopulate_local!(options); end
  def prepopulate_nested!(options); end
end
module Reform::Form::Call
  def call(params, &block); end
end
class Reform::Form::Call::Result < SimpleDelegator
  def failure?; end
  def initialize(success, data); end
  def success?; end
end
class Reform::Form < Reform::Contract
  def self.default_nested_class; end
  def self.deserializer_class; end
  def self.deserializer_class=(arg0); end
  def skip!; end
  extend Disposable::Twin::Sync::ToNestedHash::ClassMethods
  extend Reform::Form::Property
  include Disposable::Twin::Changed
  include Disposable::Twin::Save
  include Disposable::Twin::Sync
  include Disposable::Twin::Sync::SkipGetter
  include Reform::Form::Call
  include Reform::Form::Prepopulate
  include Reform::Form::Validate
end
class Reform::Form::InvalidOptionsCombinationError < StandardError
end
module Reform::Form::Property
  def property(name, options = nil, &block); end
end
module Reform::Form::Composition
  def self.included(base); end
end
module Reform::Form::Composition::ClassMethods
  def model(main_model, options = nil); end
end
module Reform::Form::Module
  def self.included(base); end
end
module Reform::Form::Module::Included
  def included(includer); end
end
module Reform::Form::Module::ClassMethods
  def method_missing(method, *args, &block); end
end
class Reform::Contract::Result::Errors
  def [](name); end
  def add(key, error_test); end
  def empty?; end
  def full_messages; end
  def initialize(result, form); end
  def messages(*args); end
  def size; end
end
