# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/dry-logic/all/dry-logic.rbi
#
# dry-logic-1.1.0

module Dry
end
module Dry::Logic
  def self.Rule(*args, **options, &block); end
end
module Dry::Logic::Operators
  def &(other); end
  def >(other); end
  def ^(other); end
  def and(other); end
  def or(other); end
  def then(other); end
  def xor(other); end
  def |(other); end
end
module Dry::Logic::Operations
end
class Dry::Logic::Operations::Abstract
  def curry(*args); end
  def id; end
  def initialize(*rules, **options); end
  def new(rules, **new_options); end
  def options; end
  def rules; end
  def to_ast; end
  def with(new_options); end
  include Anonymous_Dry_Equalizer_63
  include Dry::Core::Constants
  include Dry::Equalizer::Methods
  include Dry::Logic::Operators
end
module Anonymous_Dry_Equalizer_63
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Logic::Operations::Binary < Dry::Logic::Operations::Abstract
  def ast(input = nil); end
  def initialize(*rules, **options); end
  def left; end
  def right; end
  def to_s; end
end
class Dry::Logic::Result
  def ast(input = nil); end
  def failure?; end
  def id; end
  def initialize(success, id = nil, &block); end
  def serializer; end
  def success; end
  def success?; end
  def to_ast; end
  def to_s; end
  def type; end
  def visit(ast); end
  def visit_and(node); end
  def visit_hint(node); end
  def visit_not(node); end
  def visit_or(node); end
  def visit_predicate(node); end
  def visit_xor(node); end
  include Dry::Core::Constants
end
class Dry::Logic::Operations::And < Dry::Logic::Operations::Binary
  def [](input); end
  def call(input); end
  def hints; end
  def initialize(*arg0, **arg1); end
  def operator; end
  def type; end
end
class Dry::Logic::Operations::Or < Dry::Logic::Operations::Binary
  def [](input); end
  def call(input); end
  def operator; end
  def type; end
end
class Dry::Logic::Operations::Xor < Dry::Logic::Operations::Binary
  def [](input); end
  def ast(input = nil); end
  def call(input); end
  def operator; end
  def type; end
end
class Dry::Logic::Operations::Implication < Dry::Logic::Operations::Binary
  def [](input); end
  def call(input); end
  def operator; end
  def type; end
end
class Dry::Logic::Operations::Unary < Dry::Logic::Operations::Abstract
  def ast(input = nil); end
  def initialize(*rules, **options); end
  def rule; end
  def to_s; end
end
class Dry::Logic::Operations::Negation < Dry::Logic::Operations::Unary
  def [](input); end
  def call(input); end
  def type; end
end
class Dry::Logic::Evaluator
  def initialize(path); end
  def path; end
  include Anonymous_Dry_Equalizer_64
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_64
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Logic::Evaluator::Set
  def [](input); end
  def call(input); end
  def evaluators; end
  def initialize(evaluators); end
  def self.new(paths); end
  include Anonymous_Dry_Equalizer_65
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_65
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Logic::Evaluator::Key < Dry::Logic::Evaluator
  def [](input); end
  def call(input); end
end
class Dry::Logic::Evaluator::Attr < Dry::Logic::Evaluator
  def [](input); end
  def call(input); end
end
class Dry::Logic::Operations::Key < Dry::Logic::Operations::Unary
  def [](hash); end
  def ast(input = nil); end
  def call(hash); end
  def evaluator; end
  def initialize(*rules, **options); end
  def path; end
  def self.evaluator(name); end
  def self.new(rules, **options); end
  def to_s; end
  def type; end
end
class Dry::Logic::Operations::Attr < Dry::Logic::Operations::Key
  def self.evaluator(name); end
  def type; end
end
class Dry::Logic::Operations::Each < Dry::Logic::Operations::Unary
  def [](arr); end
  def call(input); end
  def type; end
end
class Dry::Logic::Operations::Set < Dry::Logic::Operations::Abstract
  def [](input); end
  def ast(input = nil); end
  def call(input); end
  def to_s; end
  def type; end
end
class Dry::Logic::Operations::Check < Dry::Logic::Operations::Unary
  def [](input); end
  def ast(input = nil); end
  def call(input); end
  def evaluator; end
  def initialize(*rules, **options); end
  def self.new(rule, **options); end
  def type; end
end
class Dry::Logic::Rule
  def args; end
  def args_with_names(*input); end
  def arity; end
  def ast(input = nil); end
  def bind(object); end
  def curry(*new_args); end
  def eval_args(object); end
  def id; end
  def initialize(predicate, options = nil); end
  def options; end
  def parameters; end
  def predicate; end
  def self.build(predicate, args: nil, arity: nil, **options); end
  def self.interfaces; end
  def self.specialize(arity, curried, base = nil); end
  def type; end
  def with(new_opts); end
  include Anonymous_Dry_Equalizer_66
  include Dry::Core::Constants
  include Dry::Equalizer::Methods
  include Dry::Logic::Operators
end
class Dry::Logic::Rule::Interface < Module
  def arity; end
  def constant?; end
  def curried; end
  def curried?; end
  def curried_args; end
  def define_application; end
  def define_constant_application; end
  def define_constructor; end
  def initialize(arity, curried); end
  def name; end
  def unapplied; end
  def unapplied_args; end
  def variable_arity?; end
end
module Anonymous_Dry_Equalizer_66
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Logic::Rule::Predicate < Dry::Logic::Rule
  def ast(input = nil); end
  def name; end
  def self.specialize(arity, curried, base = nil); end
  def to_ast(input = nil); end
  def to_s; end
  def type; end
end
class Dry::Logic::RuleCompiler
  def call(ast); end
  def initialize(predicates); end
  def predicates; end
  def visit(node); end
  def visit_and(node); end
  def visit_attr(node); end
  def visit_check(node); end
  def visit_each(node); end
  def visit_implication(node); end
  def visit_key(node); end
  def visit_not(node); end
  def visit_or(node); end
  def visit_predicate(node); end
  def visit_set(node); end
  def visit_xor(node); end
  include Dry::Core::Constants
end
module Dry::Logic::Predicates
  def self.included(other); end
  extend Dry::Logic::Predicates::Methods
end
module Dry::Logic::Predicates::Methods
  def [](name); end
  def array?(input); end
  def attr?(name, input); end
  def bool?(input); end
  def bytesize?(size, input); end
  def case?(pattern, input); end
  def date?(input); end
  def date_time?(input); end
  def decimal?(input); end
  def empty?(input); end
  def eql?(left, right); end
  def even?(input); end
  def excluded_from?(list, input); end
  def excludes?(value, input); end
  def exclusion?(list, input); end
  def false?(value); end
  def filled?(input); end
  def float?(input); end
  def format?(regex, input); end
  def gt?(num, input); end
  def gteq?(num, input); end
  def hash?(input); end
  def included_in?(list, input); end
  def includes?(value, input); end
  def inclusion?(list, input); end
  def int?(input); end
  def is?(left, right); end
  def key?(name, input); end
  def lt?(num, input); end
  def lteq?(num, input); end
  def max_bytesize?(num, input); end
  def max_size?(num, input); end
  def min_bytesize?(num, input); end
  def min_size?(num, input); end
  def nil?(input); end
  def none?(input); end
  def not_eql?(left, right); end
  def number?(input); end
  def odd?(input); end
  def predicate(name, &block); end
  def respond_to?(method, input); end
  def size?(size, input); end
  def str?(input); end
  def time?(input); end
  def true?(value); end
  def type?(type, input); end
  def uri?(schemes, input); end
  def uuid_v1?(input); end
  def uuid_v2?(input); end
  def uuid_v3?(input); end
  def uuid_v4?(input); end
  def uuid_v5?(input); end
end
