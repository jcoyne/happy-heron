# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: ignore
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/view_component/all/view_component.rbi
#
# view_component-2.20.0

module ViewComponent
  extend ActiveSupport::Autoload
end
class ViewComponent::Engine < Rails::Engine
end
class ViewComponent::Collection
  def collection_variable(object); end
  def component_options(item, iterator); end
  def initialize(component, object, **options); end
  def render_in(view_context, &block); end
end
module ViewComponent::CompileCache
  def compiled?(klass); end
  def invalidate!; end
  def register(klass); end
  def self.cache; end
  def self.cache=(obj); end
  def self.compiled?(klass); end
  def self.invalidate!; end
  def self.register(klass); end
end
module ViewComponent::Previewable
  extend ActiveSupport::Concern
end
class ViewComponent::Slot
  def content; end
  def content=(arg0); end
end
module ViewComponent::Slotable
  def slot(slot_name, **args, &block); end
  extend ActiveSupport::Concern
end
module ViewComponent::Slotable::ClassMethods
  def with_slot(*slot_names, collection: nil, class_name: nil); end
end
class ViewComponent::Base < ActionView::Base
  def before_render; end
  def before_render_check; end
  def config(**, &&); end
  def content; end
  def content_areas; end
  def content_areas=(val); end
  def content_areas?; end
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
  def render(options = nil, args = nil, &block); end
  def render?; end
  def render_in(view_context, &block); end
  def render_monkey_patch_enabled; end
  def request; end
  def self.compile(raise_errors: nil); end
  def self.compiled?; end
  def self.content_areas; end
  def self.content_areas=(val); end
  def self.content_areas?; end
  def self.default_preview_layout; end
  def self.default_preview_layout=(obj); end
  def self.format; end
  def self.identifier; end
  def self.inherited(child); end
  def self.initialize_parameters; end
  def self.preview_controller; end
  def self.preview_controller=(obj); end
  def self.preview_path; end
  def self.preview_path=(obj); end
  def self.preview_paths; end
  def self.preview_paths=(obj); end
  def self.preview_route; end
  def self.preview_route=(obj); end
  def self.provided_collection_parameter; end
  def self.render_monkey_patch_enabled; end
  def self.render_monkey_patch_enabled=(obj); end
  def self.short_identifier; end
  def self.show_previews; end
  def self.show_previews=(obj); end
  def self.slots; end
  def self.slots=(val); end
  def self.slots?; end
  def self.source_location; end
  def self.source_location=(arg0); end
  def self.template_compiler; end
  def self.test_controller; end
  def self.test_controller=(obj); end
  def self.type; end
  def self.validate_collection_parameter!(validate_default: nil); end
  def self.virtual_path; end
  def self.virtual_path=(arg0); end
  def self.with_collection(collection, **args); end
  def self.with_collection_parameter(param); end
  def self.with_content_areas(*areas); end
  def show_previews; end
  def slots; end
  def slots=(val); end
  def slots?; end
  def test_controller; end
  def test_controller=(obj); end
  def view_cache_dependencies; end
  def view_context; end
  def virtual_path; end
  def with(area, content = nil, &block); end
  extend ActiveSupport::Configurable::ClassMethods
  include ActiveSupport::Configurable
  include ViewComponent::Previewable
end
class ViewComponent::Base::ViewContextCalledBeforeRenderError < StandardError
end
module ViewComponent::RenderMonkeyPatch
  def render(options = nil, args = nil, &block); end
end
module ViewComponent::RenderComponentHelper
  def render_component(component, &block); end
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
  def matching_views_in_source_location; end
  def template_errors; end
  def templates; end
  def variants; end
  def variants_from_inline_calls(calls); end
end
module ViewComponent::RenderingMonkeyPatch
  def render(options = nil, args = nil); end
end
module ViewComponent::RenderToStringMonkeyPatch
  def render_to_string(options = nil, args = nil); end
end
module ViewComponent::RenderingComponentHelper
  def render_component(component); end
end
module ViewComponent::RenderComponentToStringHelper
  def render_component_to_string(component); end
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
  def self._helpers; end
  def self._routes; end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  def set_locale; end
  def show_previews?; end
  include ActionDispatch::Routing::UrlFor
  include Anonymous_Module_37
end
module Anonymous_Module_37
  def _generate_paths_by_default; end
  def _routes; end
  def self._routes; end
  def self.full_url_for(options); end
  def self.optimize_routes_generation?; end
  def self.polymorphic_path(record_or_hash_or_array, options = nil); end
  def self.polymorphic_url(record_or_hash_or_array, options = nil); end
  def self.route_for(name, *args); end
  def self.url_for(options); end
  def self.url_options; end
  extend ActiveSupport::Concern
  extend Anonymous_Module_4
  extend Anonymous_Module_5
  include ActionDispatch::Routing::UrlFor
  include Anonymous_Module_4
  include Anonymous_Module_5
end
module ViewComponent::TestHelpers
  def controller; end
  def page; end
  def refute_component_rendered; end
  def render_inline(component, **args, &block); end
  def rendered_component; end
  def request; end
  def with_variant(variant); end
  include Capybara::Minitest::Assertions
end
