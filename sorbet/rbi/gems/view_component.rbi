# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: ignore
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/view_component/all/view_component.rbi
#
# view_component-2.35.0

module ViewComponent
  extend ActiveSupport::Autoload
end
class ViewComponent::Engine < Rails::Engine
end
class ViewComponent::Collection
  def collection_variable(object); end
  def component; end
  def component_options(item, iterator); end
  def format(**, &&); end
  def initialize(component, object, **options); end
  def render_in(view_context, &block); end
end
module ViewComponent::CompileCache
  def compiled?(klass); end
  def invalidate!; end
  def register(klass); end
  def self.cache; end
  def self.cache=(val); end
  def self.compiled?(klass); end
  def self.invalidate!; end
  def self.register(klass); end
end
class ViewComponent::Slot
  def content; end
  def content=(arg0); end
end
module ViewComponent::ContentAreas
  def with(area, content = nil, &block); end
  extend ActiveSupport::Concern
end
module ViewComponent::ContentAreas::ClassMethods
  def with_content_areas(*areas); end
end
module ViewComponent::Previewable
  extend ActiveSupport::Concern
end
module ViewComponent::Slotable
  def slot(slot_name, **args, &block); end
  extend ActiveSupport::Concern
end
module ViewComponent::Slotable::ClassMethods
  def inherited(child); end
  def with_slot(*slot_names, collection: nil, class_name: nil); end
end
module ViewComponent::WithContentHelper
  def with_content(value); end
end
class ViewComponent::SlotV2
  def __vc_component_instance=(arg0); end
  def __vc_content=(arg0); end
  def __vc_content_block=(arg0); end
  def html_safe?; end
  def initialize(parent); end
  def method_missing(symbol, *args, &block); end
  def respond_to_missing?(symbol, include_all = nil); end
  def to_s; end
  include ViewComponent::WithContentHelper
end
module ViewComponent::SlotableV2
  def get_slot(slot_name); end
  def set_slot(slot_name, *args, **kwargs, &block); end
  extend ActiveSupport::Concern
end
module ViewComponent::SlotableV2::ClassMethods
  def inherited(child); end
  def register_slot(slot_name, collection:, callable:); end
  def renders_many(slot_name, callable = nil); end
  def renders_one(slot_name, callable = nil); end
  def validate_slot_name(slot_name); end
end
class ViewComponent::Base < ActionView::Base
  def _output_postamble; end
  def before_render; end
  def before_render_check; end
  def config(**, &&); end
  def content; end
  def content_areas; end
  def content_areas=(arg0); end
  def content_areas?; end
  def content_evaluated?; end
  def controller; end
  def default_preview_layout; end
  def form_authenticity_token(**, &&); end
  def format; end
  def helpers; end
  def initialize(*arg0); end
  def preview_controller; end
  def preview_path; end
  def preview_paths; end
  def preview_route; end
  def protect_against_forgery?(**, &&); end
  def registered_slots; end
  def registered_slots=(arg0); end
  def registered_slots?; end
  def render(options = nil, args = nil, &block); end
  def render?; end
  def render_in(view_context, &block); end
  def render_monkey_patch_enabled; end
  def request; end
  def self._after_compile; end
  def self._sidecar_files(extensions); end
  def self.collection_counter_parameter; end
  def self.collection_iteration_parameter; end
  def self.collection_parameter; end
  def self.compile(raise_errors: nil); end
  def self.compiled?; end
  def self.compiler; end
  def self.content_areas; end
  def self.content_areas=(value); end
  def self.content_areas?; end
  def self.counter_argument_present?; end
  def self.default_preview_layout; end
  def self.default_preview_layout=(val); end
  def self.format; end
  def self.identifier; end
  def self.inherited(child); end
  def self.initialize_parameter_names; end
  def self.initialize_parameters; end
  def self.iteration_argument_present?; end
  def self.preview_controller; end
  def self.preview_controller=(val); end
  def self.preview_path; end
  def self.preview_path=(val); end
  def self.preview_paths; end
  def self.preview_paths=(val); end
  def self.preview_route; end
  def self.preview_route=(val); end
  def self.provided_collection_parameter; end
  def self.registered_slots; end
  def self.registered_slots=(value); end
  def self.registered_slots?; end
  def self.render_monkey_patch_enabled; end
  def self.render_monkey_patch_enabled=(val); end
  def self.short_identifier; end
  def self.show_previews; end
  def self.show_previews=(val); end
  def self.show_previews_source; end
  def self.show_previews_source=(val); end
  def self.source_location; end
  def self.source_location=(arg0); end
  def self.test_controller; end
  def self.test_controller=(val); end
  def self.type; end
  def self.validate_collection_parameter!(validate_default: nil); end
  def self.validate_initialization_parameters!; end
  def self.view_component_path; end
  def self.view_component_path=(val); end
  def self.virtual_path; end
  def self.virtual_path=(arg0); end
  def self.with_collection(collection, **args); end
  def self.with_collection_parameter(parameter); end
  def show_previews; end
  def show_previews_source; end
  def test_controller; end
  def test_controller=(val); end
  def view_cache_dependencies; end
  def view_component_path; end
  def view_context; end
  def virtual_path; end
  def with_variant(variant); end
  extend ActiveSupport::Configurable::ClassMethods
  extend ViewComponent::ContentAreas::ClassMethods
  extend ViewComponent::SlotableV2::ClassMethods
  include ActiveSupport::Configurable
  include ViewComponent::ContentAreas
  include ViewComponent::Previewable
  include ViewComponent::SlotableV2
  include ViewComponent::WithContentHelper
end
class ViewComponent::Base::ViewContextCalledBeforeRenderError < StandardError
end
class ViewComponent::Compiler
  def call_method_name(variant); end
  def compile(raise_errors: nil); end
  def compiled?; end
  def compiled_template(file_path); end
  def component_class; end
  def define_render_template_for; end
  def initialize(component_class); end
  def inline_calls; end
  def inline_calls_defined_on_self; end
  def template_errors; end
  def templates; end
  def variants; end
  def variants_from_inline_calls(calls); end
end
module PreviewHelper
  def preview_source; end
  def prism_language_name(template:); end
end
class ViewComponentsController < Rails::ApplicationController
  def _layout(lookup_context, formats); end
  def default_preview_layout; end
  def determine_layout(layout_override = nil, prepend_views: nil); end
  def find_preview; end
  def index; end
  def prepend_application_view_paths; end
  def prepend_preview_examples_view_path; end
  def previews; end
  def self.__callbacks; end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  def set_locale; end
  def show_previews?; end
  include GeneratedUrlHelpers
end
module ViewComponent::TestHelpers
  def build_controller(klass); end
  def controller; end
  def page; end
  def refute_component_rendered; end
  def render_inline(component, **args, &block); end
  def rendered_component; end
  def request; end
  def with_controller_class(klass); end
  def with_request_url(path); end
  def with_variant(variant); end
  include Capybara::Minitest::Assertions
end
