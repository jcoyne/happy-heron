# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/ruby-enum/all/ruby-enum.rbi
#
# ruby-enum-0.9.0

module Ruby
end
module Ruby::Enum
  def initialize(key, value); end
  def key; end
  def self.included(base); end
  def value; end
end
module Ruby::Enum::ClassMethods
  def const_missing(key); end
  def define(key, value = nil); end
  def each(&block); end
  def each_key(&_block); end
  def each_value(&_block); end
  def key(v); end
  def key?(k); end
  def keys; end
  def parse(k); end
  def store_new_instance(key, value); end
  def to_h; end
  def upper?(s); end
  def validate_key!(key); end
  def validate_value!(value); end
  def value(k); end
  def value?(v); end
  def values; end
end
module Ruby::Enum::Errors
end
class Ruby::Enum::Errors::Base < StandardError
  def compose_message(key, attributes = nil); end
  def create_problem(key, attributes); end
  def create_resolution(key, attributes); end
  def create_summary(key, attributes); end
  def problem; end
  def resolution; end
  def summary; end
  def translate(key, options); end
end
class Ruby::Enum::Errors::UninitializedConstantError < Ruby::Enum::Errors::Base
  def initialize(attrs); end
end
class Ruby::Enum::Errors::DuplicateKeyError < Ruby::Enum::Errors::Base
  def initialize(attrs); end
end
class Ruby::Enum::Errors::DuplicateValueError < Ruby::Enum::Errors::Base
  def initialize(attrs); end
end
