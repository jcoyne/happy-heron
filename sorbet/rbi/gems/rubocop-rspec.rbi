# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/rubocop-rspec/all/rubocop-rspec.rbi
#
# rubocop-rspec-2.4.0

module RuboCop
end
module RuboCop::RSpec
end
module RuboCop::RSpec::Version
end
module RuboCop::RSpec::Inject
  def self.defaults!; end
end
module RuboCop::RSpec::Node
  def recursive_literal_or_const?; end
end
class RuboCop::RSpec::Wording
  def append_suffix(word, suffix); end
  def ignored_word?(word); end
  def ignores; end
  def initialize(text, ignore:, replace:); end
  def remove_should_and_pluralize; end
  def replace_prefix(pattern, replacement); end
  def replacements; end
  def rewrite; end
  def substitute(word); end
  def text; end
  def uppercase?(word); end
end
module RuboCop::RSpec::Language
  def example?(param0 = nil); end
  def example_group?(param0 = nil); end
  def example_group_with_body?(param0 = nil); end
  def hook?(param0 = nil); end
  def include?(param0 = nil); end
  def let?(param0 = nil); end
  def rspec?(param0 = nil); end
  def self.config; end
  def self.config=(arg0); end
  def shared_group?(param0 = nil); end
  def spec_group?(param0 = nil); end
  def subject?(param0 = nil); end
  extend RuboCop::AST::NodePattern::Macros
  extend RuboCop::RSpec::Language::NodePattern
end
module RuboCop::RSpec::Language::NodePattern
  def block_pattern(string); end
  def send_pattern(string); end
end
module RuboCop::RSpec::Language::ExampleGroups
  def self.all(element); end
  def self.focused(element); end
  def self.regular(element); end
  def self.skipped(element); end
end
module RuboCop::RSpec::Language::Examples
  def self.all(element); end
  def self.focused(element); end
  def self.pending(element); end
  def self.regular(element); end
  def self.skipped(element); end
end
module RuboCop::RSpec::Language::Expectations
  def self.all(element); end
end
module RuboCop::RSpec::Language::Helpers
  def self.all(element); end
end
module RuboCop::RSpec::Language::Hooks
  def self.all(element); end
end
module RuboCop::RSpec::Language::HookScopes
  def self.all(element); end
end
module RuboCop::RSpec::Language::Includes
  def self.all(element); end
  def self.context(element); end
  def self.examples(element); end
end
module RuboCop::RSpec::Language::Runners
  def self.all(element); end
end
module RuboCop::RSpec::Language::SharedGroups
  def self.all(element); end
  def self.context(element); end
  def self.examples(element); end
end
module RuboCop::RSpec::Language::Subjects
  def self.all(element); end
end
module RuboCop::RSpec::Language::ALL
  def self.all(element); end
end
module RuboCop::Cop
end
module RuboCop::Cop::RSpec
end
module RuboCop::Cop::RSpec::TopLevelGroup
  def on_new_investigation; end
  def on_top_level_example_group(_node); end
  def on_top_level_group(_node); end
  def root_node; end
  def top_level_group?(node); end
  def top_level_groups; end
  def top_level_nodes(node); end
  extend RuboCop::AST::NodePattern::Macros
end
module RuboCop::Cop::RSpec::Variable
  def variable_definition?(param0 = nil); end
  extend RuboCop::AST::NodePattern::Macros
end
module RuboCop::Cop::RSpec::FinalEndLocation
  def final_end_location(start_node); end
end
module RuboCop::Cop::RSpec::CommentsHelp
  def begin_pos_with_comment(node); end
  def buffer; end
  def end_line_position(node); end
  def source_range_with_comment(node); end
  def start_line_position(node); end
  include RuboCop::Cop::RSpec::FinalEndLocation
end
module RuboCop::Cop::RSpec::EmptyLineSeparation
  def last_child?(node); end
  def missing_separating_line(node); end
  def missing_separating_line_offense(node); end
  def offending_loc(last_line); end
  include RuboCop::Cop::RSpec::FinalEndLocation
  include RuboCop::Cop::RangeHelp
end
class RuboCop::RSpec::Concept
  def ==(other); end
  def eql?(other); end
  def hash; end
  def initialize(node); end
  def node; end
  def to_node; end
  extend RuboCop::AST::NodePattern::Macros
  extend RuboCop::RSpec::Language::NodePattern
  include RuboCop::RSpec::Language
end
class RuboCop::RSpec::ExampleGroup < RuboCop::RSpec::Concept
  def examples; end
  def find_all(node, predicate); end
  def find_all_in_scope(node, predicate); end
  def hooks; end
  def lets; end
  def scope_change?(param0 = nil); end
  def subjects; end
end
class RuboCop::RSpec::Example < RuboCop::RSpec::Concept
  def definition; end
  def doc_string; end
  def extract_doc_string(param0 = nil); end
  def extract_implementation(param0 = nil); end
  def extract_metadata(param0 = nil); end
  def implementation; end
  def metadata; end
end
class RuboCop::RSpec::Hook < RuboCop::RSpec::Concept
  def example?; end
  def extract_metadata(param0 = nil); end
  def knowable_scope?; end
  def metadata; end
  def name; end
  def scope; end
  def scope_argument; end
  def scope_name; end
  def transform_metadata(meta); end
  def transform_true(node); end
  def valid_scope?(node); end
end
class RuboCop::Cop::RSpec::Base < RuboCop::Cop::Base
  def on_new_investigation; end
  def self.inherited(subclass); end
  extend RuboCop::RSpec::Language::NodePattern
  include RuboCop::RSpec::Language
end
class RuboCop::RSpec::AlignLetBrace
  def adjacent_let_chunks; end
  def indent_for(node); end
  def initialize(root, token); end
  def let_group_for(let); end
  def let_token(node); end
  def offending_tokens; end
  def root; end
  def single_line_lets; end
  def target_column_for(let); end
  def token; end
  include RuboCop::RSpec::Language
end
module RuboCop::RSpec::FactoryBot
  def self.attribute_defining_methods; end
  def self.reserved_methods; end
end
module RuboCop::RSpec::Corrector
end
class RuboCop::RSpec::Corrector::MoveNode
  def corrector; end
  def initialize(node, corrector, processed_source); end
  def move_after(other); end
  def move_before(other); end
  def node_range(node); end
  def node_range_with_surrounding_space(node); end
  def original; end
  def processed_source; end
  def source(node); end
  include RuboCop::Cop::RSpec::CommentsHelp
  include RuboCop::Cop::RSpec::FinalEndLocation
  include RuboCop::Cop::RangeHelp
end
module RuboCop::Cop::RSpec::Capybara
end
class RuboCop::Cop::RSpec::Capybara::CurrentPathExpectation < RuboCop::Cop::RSpec::Base
  def add_ignore_query_options(corrector, node); end
  def as_is_matcher(param0 = nil); end
  def autocorrect(corrector, node); end
  def convert_regexp_str_to_literal(corrector, matcher_node, regexp_str); end
  def expectation_set_on_current_path(param0 = nil); end
  def on_send(node); end
  def regexp_str_matcher(param0 = nil); end
  def rewrite_expectation(corrector, node, to_symbol, matcher_node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::RSpec::Capybara::FeatureMethods < RuboCop::Cop::RSpec::Base
  def capybara_speak(param0 = nil); end
  def enabled?(method_name); end
  def enabled_methods; end
  def feature_method(param0 = nil); end
  def inside_spec?(node); end
  def message(range); end
  def on_block(node); end
  def root_node?(node); end
  def root_with_siblings?(node); end
  def spec?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::RSpec::Capybara::VisibilityMatcher < RuboCop::Cop::RSpec::Base
  def capybara_matcher?(method_name); end
  def on_send(node); end
  def visible_false?(param0 = nil); end
  def visible_true?(param0 = nil); end
end
module RuboCop::Cop::RSpec::FactoryBot
end
class RuboCop::Cop::RSpec::FactoryBot::AttributeDefinedStatically < RuboCop::Cop::RSpec::Base
  def association?(param0 = nil); end
  def attribute_defining_method?(method_name); end
  def autocorrect(corrector, node); end
  def autocorrect_replacing_parens(corrector, node); end
  def autocorrect_without_parens(corrector, node); end
  def braces(node); end
  def factory_attributes(param0 = nil); end
  def offensive_receiver?(receiver, node); end
  def on_block(node); end
  def proc?(attribute); end
  def receiver_matches_first_block_argument?(receiver, node); end
  def reserved_method?(method_name); end
  def value_hash_without_braces?(node); end
  def value_matcher(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::RSpec::FactoryBot::CreateList < RuboCop::Cop::RSpec::Base
  def contains_only_factory?(node); end
  def factory_call(param0 = nil); end
  def factory_list_call(param0 = nil); end
  def n_times_block_without_arg?(param0 = nil); end
  def on_block(node); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
module RuboCop::Cop::RSpec::FactoryBot::CreateList::Corrector
  def build_options_string(options); end
  def format_method_call(node, method, arguments); end
  def format_receiver(receiver); end
end
class RuboCop::Cop::RSpec::FactoryBot::CreateList::TimesCorrector
  def call(corrector); end
  def generate_n_times_block(node); end
  def initialize(node); end
  def node; end
  include RuboCop::Cop::RSpec::FactoryBot::CreateList::Corrector
end
class RuboCop::Cop::RSpec::FactoryBot::CreateList::CreateListCorrector
  def build_arguments(node, count); end
  def call(corrector); end
  def call_replacement(node); end
  def call_with_block_replacement(node); end
  def format_block(node); end
  def format_multiline_block(node); end
  def format_singeline_block(node); end
  def initialize(node); end
  def node; end
  include RuboCop::Cop::RSpec::FactoryBot::CreateList::Corrector
end
class RuboCop::Cop::RSpec::FactoryBot::FactoryClassName < RuboCop::Cop::RSpec::Base
  def allowed?(const_name); end
  def class_name(param0 = nil); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
end
module RuboCop::Cop::RSpec::Rails
end
class RuboCop::Cop::RSpec::Rails::AvoidSetupHook < RuboCop::Cop::RSpec::Base
  def on_block(node); end
  def setup_call(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::RSpec::Rails::HttpStatus < RuboCop::Cop::RSpec::Base
  def checker_class; end
  def http_status(param0 = nil); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::RSpec::Rails::HttpStatus::SymbolicStyleChecker
  def custom_http_status_code?; end
  def initialize(node); end
  def message; end
  def node; end
  def number; end
  def offensive?; end
  def preferred_style; end
  def symbol; end
end
class RuboCop::Cop::RSpec::Rails::HttpStatus::NumericStyleChecker
  def allowed_symbol?; end
  def initialize(node); end
  def message; end
  def node; end
  def number; end
  def offensive?; end
  def preferred_style; end
  def symbol; end
end
class RuboCop::Cop::RSpec::AlignLeftLetBrace < RuboCop::Cop::RSpec::Base
  def on_new_investigation; end
  def self.autocorrect_incompatible_with; end
  def token_aligner; end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::RSpec::AlignRightLetBrace < RuboCop::Cop::RSpec::Base
  def on_new_investigation; end
  def self.autocorrect_incompatible_with; end
  def token_aligner; end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::RSpec::AnyInstance < RuboCop::Cop::RSpec::Base
  def on_send(node); end
end
class RuboCop::Cop::RSpec::AroundBlock < RuboCop::Cop::RSpec::Base
  def add_no_arg_offense(node); end
  def check_for_unused_proxy(block, proxy); end
  def find_arg_usage(param0); end
  def hook(param0 = nil); end
  def on_block(node); end
end
class RuboCop::Cop::RSpec::Be < RuboCop::Cop::RSpec::Base
  def be_without_args(param0 = nil); end
  def on_send(node); end
end
class RuboCop::Cop::RSpec::BeEql < RuboCop::Cop::RSpec::Base
  def eql_type_with_identity(param0 = nil); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::RSpec::BeforeAfterAll < RuboCop::Cop::RSpec::Base
  def before_or_after_all(param0 = nil); end
  def on_send(node); end
end
class RuboCop::Cop::RSpec::ContextMethod < RuboCop::Cop::RSpec::Base
  def context_method(param0 = nil); end
  def method_name?(description); end
  def on_block(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::RSpec::ContextWording < RuboCop::Cop::RSpec::Base
  def bad_prefix?(description); end
  def context_wording(param0 = nil); end
  def joined_prefixes; end
  def on_block(node); end
  def prefix_regex; end
  def prefixes; end
end
class RuboCop::Cop::RSpec::DescribeClass < RuboCop::Cop::RSpec::Base
  def example_group_with_ignored_metadata?(param0 = nil); end
  def ignored_metadata; end
  def ignored_metadata?(node); end
  def not_a_const_described(param0 = nil); end
  def on_top_level_group(node); end
  def string_constant?(described); end
  def sym_pair(param0 = nil); end
  include RuboCop::Cop::RSpec::TopLevelGroup
end
class RuboCop::Cop::RSpec::DescribeMethod < RuboCop::Cop::RSpec::Base
  def on_top_level_group(node); end
  def second_argument(param0 = nil); end
  include RuboCop::Cop::RSpec::TopLevelGroup
end
class RuboCop::Cop::RSpec::DescribeSymbol < RuboCop::Cop::RSpec::Base
  def describe_symbol?(param0 = nil); end
  def on_send(node); end
end
class RuboCop::Cop::RSpec::DescribedClass < RuboCop::Cop::RSpec::Base
  def autocorrect(corrector, match); end
  def collapse_namespace(namespace, const); end
  def common_instance_exec_closure?(param0 = nil); end
  def const_name(node); end
  def contains_described_class?(param0); end
  def described_constant(param0 = nil); end
  def find_usage(node, &block); end
  def full_const_name(node); end
  def message(offense); end
  def namespace(node); end
  def offensive?(node); end
  def offensive_described_class?(node); end
  def on_block(node); end
  def rspec_block?(param0 = nil); end
  def scope_change?(node); end
  def scope_changing_syntax?(param0 = nil); end
  def skip_blocks?; end
  def skippable_block?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::RSpec::DescribedClassModuleWrapping < RuboCop::Cop::RSpec::Base
  def find_rspec_blocks(param0); end
  def on_module(node); end
end
class RuboCop::Cop::RSpec::Dialect < RuboCop::Cop::RSpec::Base
  def on_send(node); end
  def rspec_method?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::MethodPreference
end
class RuboCop::Cop::RSpec::EmptyExampleGroup < RuboCop::Cop::RSpec::Base
  def conditionals_with_examples?(body); end
  def example_group_body(param0 = nil); end
  def example_or_group_or_include?(param0 = nil); end
  def examples?(param0 = nil); end
  def examples_directly_or_in_block?(param0 = nil); end
  def examples_in_branches?(if_node); end
  def examples_inside_block?(param0 = nil); end
  def offensive?(body); end
  def on_block(node); end
end
class RuboCop::Cop::RSpec::EmptyHook < RuboCop::Cop::RSpec::Base
  def empty_hook?(param0 = nil); end
  def on_block(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::RSpec::EmptyLineAfterExample < RuboCop::Cop::RSpec::Base
  def allow_consecutive_one_liners?; end
  def allowed_one_liner?(node); end
  def consecutive_one_liner?(node); end
  def next_one_line_example?(node); end
  def next_sibling(node); end
  def on_block(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RSpec::EmptyLineSeparation
end
class RuboCop::Cop::RSpec::EmptyLineAfterExampleGroup < RuboCop::Cop::RSpec::Base
  def on_block(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RSpec::EmptyLineSeparation
end
class RuboCop::Cop::RSpec::EmptyLineAfterFinalLet < RuboCop::Cop::RSpec::Base
  def on_block(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RSpec::EmptyLineSeparation
end
class RuboCop::Cop::RSpec::EmptyLineAfterHook < RuboCop::Cop::RSpec::Base
  def on_block(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RSpec::EmptyLineSeparation
end
class RuboCop::Cop::RSpec::EmptyLineAfterSubject < RuboCop::Cop::RSpec::Base
  def in_spec_block?(node); end
  def on_block(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RSpec::EmptyLineSeparation
end
class RuboCop::Cop::RSpec::ExampleLength < RuboCop::Cop::RSpec::Base
  def cop_label; end
  def on_block(node); end
  include RuboCop::Cop::CodeLength
end
class RuboCop::Cop::RSpec::ExampleWithoutDescription < RuboCop::Cop::RSpec::Base
  def check_example_without_description(node); end
  def disallow_empty_description?(node); end
  def example_description(param0 = nil); end
  def on_block(node); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::RSpec::ExampleWording < RuboCop::Cop::RSpec::Base
  def add_wording_offense(node, message); end
  def custom_transform; end
  def docstring(node); end
  def ignored_words; end
  def it_description(param0 = nil); end
  def on_block(node); end
  def replacement_text(node); end
  def text(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::RSpec::ExpectActual < RuboCop::Cop::RSpec::Base
  def complex_literal?(node); end
  def expect_literal(param0 = nil); end
  def literal?(node); end
  def on_send(node); end
  def simple_literal?(node); end
  def swap(corrector, actual, expected); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::RSpec::ExpectChange < RuboCop::Cop::RSpec::Base
  def expect_change_with_arguments(param0 = nil); end
  def expect_change_with_block(param0 = nil); end
  def on_block(node); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::RSpec::ExpectInHook < RuboCop::Cop::RSpec::Base
  def expectation(param0); end
  def message(expect, hook); end
  def on_block(node); end
end
class RuboCop::Cop::RSpec::ExpectOutput < RuboCop::Cop::RSpec::Base
  def inside_example_scope?(node); end
  def on_gvasgn(node); end
end
class RuboCop::Cop::RSpec::FilePath < RuboCop::Cop::RSpec::Base
  def camel_to_snake_case(string); end
  def custom_transform; end
  def ensure_correct_file_path(send_node, example_group, arguments); end
  def example_group(param0 = nil); end
  def expected_path(constant); end
  def filename_ends_with?(pattern); end
  def ignore_methods?; end
  def name_pattern(method_name); end
  def on_top_level_example_group(node); end
  def pattern_for(example_group, method_name); end
  def pattern_for_spec_suffix_only?; end
  def relevant_rubocop_rspec_file?(_file); end
  def routing_metadata?(param0); end
  def routing_spec?(args); end
  def spec_suffix_only?; end
  include RuboCop::Cop::RSpec::TopLevelGroup
end
class RuboCop::Cop::RSpec::Focus < RuboCop::Cop::RSpec::Base
  def correct_send(corrector, focus); end
  def focus_metadata(node, &block); end
  def focusable_selector?(param0 = nil); end
  def focused_block?(param0 = nil); end
  def metadata(param0 = nil); end
  def on_send(node); end
  def with_surrounding(focus); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::RSpec::HookArgument < RuboCop::Cop::RSpec::Base
  def argument_range(send_node); end
  def check_implicit(method_send); end
  def explicit_message(scope); end
  def hook(node, &block); end
  def implicit_style?; end
  def on_block(node); end
  def scoped_hook(param0 = nil); end
  def unscoped_hook(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::RSpec::HooksBeforeExamples < RuboCop::Cop::RSpec::Base
  def autocorrect(corrector, node, first_example); end
  def check_hooks(node); end
  def example_or_group?(param0 = nil); end
  def find_first_example(node); end
  def multiline_block?(block); end
  def on_block(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::RSpec::IdenticalEqualityAssertion < RuboCop::Cop::RSpec::Base
  def equality_check?(param0 = nil); end
  def on_send(node); end
end
class RuboCop::Cop::RSpec::ImplicitBlockExpectation < RuboCop::Cop::RSpec::Base
  def find_subject(block_node); end
  def implicit_expect(param0 = nil); end
  def lambda?(param0 = nil); end
  def lambda_subject?(param0 = nil); end
  def multi_statement_example_group?(node); end
  def nearest_subject(node); end
  def on_send(node); end
end
class RuboCop::Cop::RSpec::ImplicitExpect < RuboCop::Cop::RSpec::Base
  def implicit_expect(param0 = nil); end
  def is_expected_range(source_map); end
  def offending_expect(node); end
  def offense_message(offending_source); end
  def on_send(node); end
  def replacement_source(offending_source); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::RSpec::ImplicitSubject < RuboCop::Cop::RSpec::Base
  def allowed_by_style?(example); end
  def autocorrect(corrector, node); end
  def implicit_subject?(param0 = nil); end
  def on_send(node); end
  def valid_usage?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::RSpec::InstanceSpy < RuboCop::Cop::RSpec::Base
  def autocorrect(corrector, node); end
  def have_received_usage(param0); end
  def null_double(param0); end
  def on_block(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::RSpec::InstanceVariable < RuboCop::Cop::RSpec::Base
  def assignment_only?; end
  def custom_matcher?(param0 = nil); end
  def dynamic_class?(param0 = nil); end
  def ivar_assigned?(param0, param1); end
  def ivar_usage(param0); end
  def on_top_level_group(node); end
  def valid_usage?(node); end
  include RuboCop::Cop::RSpec::TopLevelGroup
end
class RuboCop::Cop::RSpec::ItBehavesLike < RuboCop::Cop::RSpec::Base
  def example_inclusion_offense(param0 = nil, param1); end
  def message(_node); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::RSpec::IteratedExpectation < RuboCop::Cop::RSpec::Base
  def each?(param0 = nil); end
  def expectation?(param0 = nil, param1); end
  def on_block(node); end
  def only_expectations?(body, arg); end
  def single_expectation?(body, arg); end
end
class RuboCop::Cop::RSpec::LeadingSubject < RuboCop::Cop::RSpec::Base
  def autocorrect(corrector, node, sibling); end
  def check_previous_nodes(node); end
  def in_spec_block?(node); end
  def offending?(node); end
  def offending_node(node); end
  def on_block(node); end
  def parent(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::RSpec::LeakyConstantDeclaration < RuboCop::Cop::RSpec::Base
  def inside_describe_block?(node); end
  def on_casgn(node); end
  def on_class(node); end
  def on_module(node); end
end
class RuboCop::Cop::RSpec::LetBeforeExamples < RuboCop::Cop::RSpec::Base
  def autocorrect(corrector, node, first_example); end
  def check_let_declarations(node); end
  def example_or_group?(param0 = nil); end
  def find_first_example(node); end
  def multiline_block?(block); end
  def on_block(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::RSpec::LetSetup < RuboCop::Cop::RSpec::Base
  def child_let_bang(node, &block); end
  def example_or_shared_group_or_including?(param0 = nil); end
  def let_bang(param0 = nil); end
  def method_called?(param0, param1); end
  def on_block(node); end
  def unused_let_bang(node); end
end
class RuboCop::Cop::RSpec::MessageChain < RuboCop::Cop::RSpec::Base
  def on_send(node); end
end
class RuboCop::Cop::RSpec::MessageExpectation < RuboCop::Cop::RSpec::Base
  def message_expectation(param0 = nil); end
  def on_send(node); end
  def preferred_style?(expectation); end
  def receive_message?(param0); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::RSpec::MessageSpies < RuboCop::Cop::RSpec::Base
  def error_message(receiver); end
  def message_expectation(param0 = nil); end
  def on_send(node); end
  def preferred_style?(expectation); end
  def receive_message(param0); end
  def receive_message_matcher(node); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::RSpec::MissingExampleGroupArgument < RuboCop::Cop::RSpec::Base
  def on_block(node); end
end
class RuboCop::Cop::RSpec::MultipleDescribes < RuboCop::Cop::RSpec::Base
  def on_top_level_group(node); end
  include RuboCop::Cop::RSpec::TopLevelGroup
end
class RuboCop::Cop::RSpec::MultipleExpectations < RuboCop::Cop::RSpec::Base
  def aggregate_failures?(param0 = nil, param1); end
  def aggregate_failures_block?(param0 = nil); end
  def example_with_aggregate_failures?(example_node); end
  def expect?(param0 = nil); end
  def find_aggregate_failures(example_node); end
  def find_expectation(node, &block); end
  def flag_example(node, expectation_count:); end
  def max_expectations; end
  def on_block(node); end
  include RuboCop::Cop::ConfigurableMax
end
class RuboCop::Cop::RSpec::MultipleMemoizedHelpers < RuboCop::Cop::RSpec::Base
  def all_helpers(node); end
  def allow_subject?; end
  def example_group_memoized_helpers; end
  def helpers(node); end
  def max; end
  def on_block(node); end
  def on_new_investigation; end
  def variable_nodes(node); end
  include RuboCop::Cop::ConfigurableMax
  include RuboCop::Cop::RSpec::Variable
end
class RuboCop::Cop::RSpec::MultipleSubjects < RuboCop::Cop::RSpec::Base
  def autocorrect(corrector, subject); end
  def named_subject?(node); end
  def on_block(node); end
  def remove_autocorrect(corrector, node); end
  def rename_autocorrect(corrector, node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::RSpec::NamedSubject < RuboCop::Cop::RSpec::Base
  def example_or_hook_block?(param0 = nil); end
  def ignored_shared_example?(node); end
  def on_block(node); end
  def shared_example?(param0 = nil); end
  def subject_usage(param0); end
end
class RuboCop::Cop::RSpec::NestedGroups < RuboCop::Cop::RSpec::Base
  def find_nested_example_groups(node, nesting: nil, &block); end
  def max_nesting; end
  def max_nesting_config; end
  def message(nesting); end
  def on_top_level_group(node); end
  include RuboCop::Cop::ConfigurableMax
  include RuboCop::Cop::RSpec::TopLevelGroup
end
class RuboCop::Cop::RSpec::NotToNot < RuboCop::Cop::RSpec::Base
  def message(_node); end
  def not_to_not_offense(param0 = nil, param1); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::RSpec::OverwritingSetup < RuboCop::Cop::RSpec::Base
  def common_setup?(node); end
  def find_duplicates(node); end
  def first_argument_name(param0 = nil); end
  def on_block(node); end
  def setup?(param0 = nil); end
end
class RuboCop::Cop::RSpec::Pending < RuboCop::Cop::RSpec::Base
  def on_send(node); end
  def pending_block?(param0 = nil); end
  def skip_or_pending?(param0 = nil); end
  def skippable?(param0 = nil); end
  def skipped?(node); end
  def skipped_in_metadata?(param0 = nil); end
end
module RuboCop::Cop::RSpec::InflectedHelper
  def be_bool?(param0 = nil); end
  def be_boolthy?(param0 = nil); end
  def boolean_matcher?(node); end
  def check_inflected(node); end
  def message_inflected(predicate); end
  def predicate?(sym); end
  def predicate_in_actual?(param0 = nil); end
  def remove_predicate(corrector, predicate); end
  def rewrite_matcher(corrector, predicate, matcher); end
  def to_predicate_matcher(name); end
  def true?(to_symbol, matcher); end
  extend RuboCop::AST::NodePattern::Macros
  include RuboCop::RSpec::Language
end
module RuboCop::Cop::RSpec::ExplicitHelper
  def allowed_explicit_matchers; end
  def check_explicit(node); end
  def corrector_explicit(corrector, to_node, actual, matcher, block_child); end
  def message_explicit(matcher); end
  def move_predicate(corrector, actual, matcher, block_child); end
  def predicate_matcher?(param0 = nil); end
  def predicate_matcher_block?(param0 = nil); end
  def predicate_matcher_name?(name); end
  def replacement_matcher(node); end
  def to_predicate_method(matcher); end
  extend RuboCop::AST::NodePattern::Macros
  include RuboCop::RSpec::Language
end
class RuboCop::Cop::RSpec::PredicateMatcher < RuboCop::Cop::RSpec::Base
  def args_loc(send_node); end
  def block_loc(send_node); end
  def on_block(node); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RSpec::ExplicitHelper
  include RuboCop::Cop::RSpec::InflectedHelper
end
class RuboCop::Cop::RSpec::ReceiveCounts < RuboCop::Cop::RSpec::Base
  def autocorrect(corrector, node, range); end
  def matcher_for(method, count); end
  def message_for(node, source); end
  def on_send(node); end
  def range(node, offending_node); end
  def receive_counts(param0 = nil); end
  def stub?(param0); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::RSpec::ReceiveNever < RuboCop::Cop::RSpec::Base
  def autocorrect(corrector, node); end
  def method_on_stub?(param0); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::RSpec::RepeatedDescription < RuboCop::Cop::RSpec::Base
  def example_signature(example); end
  def on_block(node); end
  def repeated_descriptions(node); end
end
class RuboCop::Cop::RSpec::RepeatedExample < RuboCop::Cop::RSpec::Base
  def example_signature(example); end
  def on_block(node); end
  def repeated_examples(node); end
end
class RuboCop::Cop::RSpec::RepeatedExampleGroupBody < RuboCop::Cop::RSpec::Base
  def add_repeated_lines(groups); end
  def body(param0 = nil); end
  def const_arg(param0 = nil); end
  def message(group, repeats); end
  def metadata(param0 = nil); end
  def on_begin(node); end
  def repeated_group_bodies(node); end
  def several_example_groups?(param0 = nil); end
  def signature_keys(group); end
  def skip_or_pending?(param0 = nil); end
end
class RuboCop::Cop::RSpec::RepeatedExampleGroupDescription < RuboCop::Cop::RSpec::Base
  def add_repeated_lines(groups); end
  def doc_string_and_metadata(param0 = nil); end
  def empty_description?(param0 = nil); end
  def message(group, repeats); end
  def on_begin(node); end
  def repeated_group_descriptions(node); end
  def several_example_groups?(param0 = nil); end
  def skip_or_pending?(param0 = nil); end
end
class RuboCop::Cop::RSpec::RepeatedIncludeExample < RuboCop::Cop::RSpec::Base
  def add_repeated_lines(items); end
  def include_examples?(param0 = nil); end
  def literal_include_examples?(node); end
  def message(item, repeats); end
  def on_begin(node); end
  def repeated_include_examples(node); end
  def several_include_examples?(param0 = nil); end
  def shared_examples_name(param0 = nil); end
  def signature_keys(item); end
end
class RuboCop::Cop::RSpec::ReturnFromStub < RuboCop::Cop::RSpec::Base
  def and_return_value(param0); end
  def check_and_return_call(node); end
  def check_block_body(block); end
  def contains_stub?(param0); end
  def dynamic?(node); end
  def on_block(node); end
  def on_send(node); end
  def stub_with_block?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::RSpec::ReturnFromStub::AndReturnCallCorrector
  def arg; end
  def call(corrector); end
  def hash_without_braces?; end
  def heredoc?; end
  def initialize(node); end
  def node; end
  def range; end
  def receiver; end
  def replacement; end
end
class RuboCop::Cop::RSpec::ReturnFromStub::BlockBodyCorrector
  def block; end
  def body; end
  def call(corrector); end
  def heredoc?; end
  def initialize(block); end
  def node; end
end
class RuboCop::Cop::RSpec::ScatteredLet < RuboCop::Cop::RSpec::Base
  def check_let_declarations(body); end
  def find_first_let(node); end
  def on_block(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::RSpec::ScatteredSetup < RuboCop::Cop::RSpec::Base
  def lines_msg(numbers); end
  def on_block(node); end
  def repeated_hooks(node); end
end
class RuboCop::Cop::RSpec::SharedContext < RuboCop::Cop::RSpec::Base
  def context?(param0); end
  def context_with_only_examples(node); end
  def examples?(param0); end
  def examples_with_only_context(node); end
  def on_block(node); end
  def shared_context(param0 = nil); end
  def shared_example(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::RSpec::SharedExamples < RuboCop::Cop::RSpec::Base
  def on_send(node); end
  def shared_examples(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::RSpec::SharedExamples::Checker
  def initialize(node); end
  def message; end
  def node; end
  def preferred_style; end
  def symbol; end
  def wrap_with_single_quotes(string); end
end
class RuboCop::Cop::RSpec::SingleArgumentMessageChain < RuboCop::Cop::RSpec::Base
  def autocorrect(corrector, node, method, arg); end
  def autocorrect_array_arg(corrector, arg); end
  def autocorrect_hash_arg(corrector, arg); end
  def key_to_arg(node); end
  def message_chain(param0 = nil); end
  def on_send(node); end
  def replacement(method); end
  def single_element_array?(node); end
  def single_key_hash?(param0 = nil); end
  def valid_usage?(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::RSpec::StubbedMock < RuboCop::Cop::RSpec::Base
  def configured_response?(param0 = nil); end
  def expectation(param0 = nil); end
  def matcher_with_blockpass(param0 = nil); end
  def matcher_with_configured_response(param0 = nil); end
  def matcher_with_hash(param0 = nil); end
  def matcher_with_return_block(param0 = nil); end
  def message_expectation?(param0 = nil); end
  def msg(method_name); end
  def on_expectation(expectation, method_name, matcher); end
  def on_send(node); end
  def replacement(method_name); end
end
class RuboCop::Cop::RSpec::SubjectStub < RuboCop::Cop::RSpec::Base
  def find_all_explicit_subjects(node); end
  def find_subject_expectations(node, subject_names = nil, &block); end
  def message_expectation?(param0 = nil, param1); end
  def message_expectation_matcher?(param0); end
  def on_top_level_group(node); end
  def subject(param0 = nil); end
  include RuboCop::Cop::RSpec::TopLevelGroup
end
class RuboCop::Cop::RSpec::UnspecifiedException < RuboCop::Cop::RSpec::Base
  def block_with_args?(node); end
  def empty_exception_matcher?(node); end
  def empty_raise_error_or_exception(param0 = nil); end
  def on_send(node); end
end
class RuboCop::Cop::RSpec::VariableDefinition < RuboCop::Cop::RSpec::Base
  def on_send(node); end
  def string?(node); end
  def style_violation?(variable); end
  def symbol?(node); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RSpec::Variable
end
class RuboCop::Cop::RSpec::VariableName < RuboCop::Cop::RSpec::Base
  def message(style); end
  def on_send(node); end
  include RuboCop::Cop::ConfigurableNaming
  include RuboCop::Cop::IgnoredPattern
  include RuboCop::Cop::RSpec::Variable
end
class RuboCop::Cop::RSpec::VerifiedDoubles < RuboCop::Cop::RSpec::Base
  def on_send(node); end
  def symbol?(name); end
  def unverified_double(param0 = nil); end
end
class RuboCop::Cop::RSpec::VoidExpect < RuboCop::Cop::RSpec::Base
  def check_expect(node); end
  def expect?(param0 = nil); end
  def expect_block?(param0 = nil); end
  def on_block(node); end
  def on_send(node); end
  def void?(expect); end
end
class RuboCop::Cop::RSpec::Yield < RuboCop::Cop::RSpec::Base
  def autocorrect(corrector, node, range); end
  def block_arg(param0 = nil); end
  def block_call?(param0 = nil, param1); end
  def block_range(node); end
  def calling_block?(node, block); end
  def convert_block_to_yield(node); end
  def generate_replacement(node); end
  def method_on_stub?(param0); end
  def on_block(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
module RuboCop::Cop::Layout
end
class RuboCop::Cop::Layout::ExtraSpacing < RuboCop::Cop::Base
  def self.autocorrect_incompatible_with; end
end
class RuboCop::AST::Node < Parser::AST::Node
  include RuboCop::RSpec::Node
end
