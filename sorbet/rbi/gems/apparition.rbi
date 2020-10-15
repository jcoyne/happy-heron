# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/apparition/all/apparition.rbi
#
# apparition-0.6.0

module Capybara
end
module Capybara::Apparition
  def self.mri?; end
  def self.windows?; end
end
class Capybara::Apparition::Error < StandardError
end
class Capybara::Apparition::NoSuchWindowError < Capybara::Apparition::Error
end
class Capybara::Apparition::ClientError < Capybara::Apparition::Error
  def initialize(response); end
  def response; end
end
class Capybara::Apparition::CDPError < Capybara::Apparition::Error
  def code; end
  def initialize(error); end
  def message; end
end
class Capybara::Apparition::JSErrorItem
  def initialize(message, stack); end
  def message; end
  def stack; end
  def to_s; end
end
class Capybara::Apparition::BrowserError < Capybara::Apparition::ClientError
  def error_parameters; end
  def message; end
  def name; end
end
class Capybara::Apparition::JavascriptError < Capybara::Apparition::ClientError
  def javascript_errors; end
  def message; end
end
class Capybara::Apparition::StatusFailError < Capybara::Apparition::ClientError
  def details; end
  def message; end
  def url; end
end
class Capybara::Apparition::FrameNotFound < Capybara::Apparition::ClientError
  def message; end
  def name; end
end
class Capybara::Apparition::InvalidSelector < Capybara::Apparition::ClientError
  def message; end
  def method; end
  def selector; end
end
class Capybara::Apparition::NodeError < Capybara::Apparition::ClientError
  def initialize(node, response); end
  def node; end
end
class Capybara::Apparition::ObsoleteNode < Capybara::Apparition::NodeError
  def message; end
end
class Capybara::Apparition::WrongWorld < Capybara::Apparition::ObsoleteNode
  def message; end
end
class Capybara::Apparition::UnsupportedFeature < Capybara::Apparition::ClientError
  def message; end
  def name; end
  def unsupported_message; end
  def version; end
end
class Capybara::Apparition::MouseEventFailed < Capybara::Apparition::NodeError
  def message; end
  def name; end
  def position; end
  def selector; end
end
class Capybara::Apparition::MouseEventImpossible < Capybara::Apparition::MouseEventFailed
  def message; end
  def name; end
  def position; end
  def selector; end
end
class Capybara::Apparition::KeyError < ArgumentError
  def initialize(key); end
end
class Capybara::Apparition::TimeoutError < Capybara::Apparition::Error
  def initialize(message = nil); end
  def message; end
end
class Capybara::Apparition::ScriptTimeoutError < Capybara::Apparition::Error
  def message; end
end
class Capybara::Apparition::DeadClient < Capybara::Apparition::Error
  def initialize(message); end
  def message; end
end
class Capybara::Apparition::InvalidResponseError < StandardError
end
class Capybara::Apparition::WebSocketClient
  def close; end
  def driver; end
  def initialize(url); end
  def messages; end
  def parse_input; end
  def read_msg; end
  def send_msg(msg); end
  def setup_driver; end
  def start_driver; end
  def status; end
end
class Capybara::Apparition::Socket
  def initialize(url); end
  def read; end
  def url; end
  def write(data); end
end
class Capybara::Apparition::ChromeClient
  def add_async_id(msg_id); end
  def cleanup_async_responses; end
  def generate_msg(command, params); end
  def generate_unique_id; end
  def handle_error(error); end
  def initialize(ws_url); end
  def listen; end
  def listen_until; end
  def on(event_name, session_id = nil, &block); end
  def process_handlers(handlers, event); end
  def process_messages; end
  def read_msg; end
  def read_until; end
  def self.client(ws_url); end
  def self.get_ws_url(options); end
  def send_cmd(command, params); end
  def send_cmd_to_session(session_id, command, params); end
  def send_msg(command, params); end
  def snake_sym(str); end
  def start_threads; end
  def stop; end
  def timeout; end
  def timeout=(arg0); end
  def wait_for_msg_response(msg_id); end
end
class Capybara::Apparition::ChromeClient::Response
  def [](key); end
  def discard_result; end
  def handle_error(error); end
  def initialize(client, *msg_ids, send_time: nil); end
  def result; end
end
class Capybara::Apparition::Configuration
  def allow_unknown_urls; end
  def allow_url(url); end
  def allowed_urls; end
  def allowed_urls=(arg0); end
  def block_unknown_urls; end
  def block_unknown_urls=(arg0); end
  def block_unknown_urls?; end
  def block_url(url); end
  def blocked_urls; end
  def blocked_urls=(arg0); end
  def debug; end
  def debug=(arg0); end
  def ignore_ssl_errors; end
  def ignore_ssl_errors=(arg0); end
  def ignore_ssl_errors?; end
  def initialize; end
  def proxy; end
  def proxy=(arg0); end
  def raise_javascript_errors; end
  def raise_javascript_errors=(arg0); end
  def self.instance; end
  def self.modify; end
  def self.to_hash; end
  def skip_image_loading; end
  def skip_image_loading=(arg0); end
  def skip_image_loading?; end
  def stderr; end
  def stderr=(arg0); end
  def timeout; end
  def timeout=(arg0); end
  def to_hash; end
  def use_proxy(proxy); end
end
class Capybara::Apparition::Browser
  def body; end
  def clear_memory_cache; end
  def clear_network_traffic(*args, &block); end
  def click_coordinates(x, y); end
  def client; end
  def command(name, **params); end
  def command_for_session(session_id, name, params); end
  def console; end
  def console_messages(type = nil); end
  def current_page(allow_nil: nil); end
  def current_url(*args, &block); end
  def debug=(arg0); end
  def evaluate(*args, &block); end
  def evaluate_async(*args, &block); end
  def execute(*args, &block); end
  def extensions=(filenames); end
  def find(*args, &block); end
  def find_window_handle(locator); end
  def frame_title(*args, &block); end
  def frame_url(*args, &block); end
  def fullscreen(*args, &block); end
  def go_back(*args, &block); end
  def go_forward(*args, &block); end
  def ignore_https_errors; end
  def ignore_https_errors=(arg0); end
  def initialize(client, logger = nil); end
  def initialize_handlers; end
  def js_errors; end
  def js_errors=(arg0); end
  def log(message); end
  def maximize(*args, &block); end
  def network_traffic(type = nil); end
  def paper_size; end
  def proxy_auth; end
  def refresh(*args, &block); end
  def refresh_pages(opener:); end
  def reset; end
  def resize(width, height, screen: nil); end
  def response_headers(*args, &block); end
  def restart; end
  def scroll_to(*args, &block); end
  def source; end
  def status_code(*args, &block); end
  def title(*args, &block); end
  def url_blacklist=(blacklist); end
  def url_whitelist=(whitelist); end
  def visit(*args, &block); end
  def zoom_factor; end
  extend Forwardable
  include Capybara::Apparition::Browser::Auth
  include Capybara::Apparition::Browser::Cookie
  include Capybara::Apparition::Browser::Frame
  include Capybara::Apparition::Browser::Header
  include Capybara::Apparition::Browser::Modal
  include Capybara::Apparition::Browser::Render
  include Capybara::Apparition::Browser::Window
end
class Capybara::Apparition::Browser::Launcher
  def self.start(options); end
end
class Capybara::Apparition::Browser::Launcher::Local
  def close_io; end
  def find_first_binary(*binaries); end
  def host; end
  def initialize(headless:, **options); end
  def kill; end
  def linux_path; end
  def macosx_path; end
  def path; end
  def port; end
  def restart; end
  def self.process_killer(pid); end
  def self.start(*args, **options); end
  def start; end
  def stop; end
  def windows_path; end
  def ws_url; end
end
class Capybara::Apparition::Browser::Launcher::Remote
  def get_ws_url(host, port); end
  def host; end
  def initialize(options); end
  def port; end
  def restart; end
  def self.start(options); end
  def start; end
  def stop; end
  def ws_url; end
end
class Capybara::Apparition::Driver < Capybara::Driver::Base
  def _within_window(selector); end
  def accept_modal(type, options = nil); end
  def add_header(name, value, options = nil); end
  def add_headers(*args, &block); end
  def all_cookies(*args, &block); end
  def app; end
  def authenticate(user = nil, password = nil); end
  def basic_authorize(user = nil, password = nil); end
  def body(*args, &block); end
  def browser; end
  def browser_logger; end
  def browser_options; end
  def clear_cookies(*args, &block); end
  def clear_memory_cache(*args, &block); end
  def clear_network_traffic(*args, &block); end
  def click(x, y); end
  def client; end
  def close_window(*args, &block); end
  def console_messages(*args, &block); end
  def cookies(*args, &block); end
  def cookies_enabled=(*args, &block); end
  def current_url(*args, &block); end
  def current_window_handle; end
  def debug; end
  def default_cookie_host; end
  def dismiss_modal(type, options = nil); end
  def error_messages; end
  def evaluate_async_script(script, *args); end
  def evaluate_script(script, *args); end
  def execute_script(script, *args); end
  def find(method, selector); end
  def find_css(selector); end
  def find_modal(options); end
  def find_xpath(selector); end
  def frame_title(*args, &block); end
  def frame_url(*args, &block); end
  def fullscreen_window(handle); end
  def generate_browser_options; end
  def go_back(*args, &block); end
  def go_forward(*args, &block); end
  def header(name, value, options = nil); end
  def headers(*args, &block); end
  def headers=(*args, &block); end
  def html(*args, &block); end
  def initialize(app, options = nil); end
  def inspector; end
  def invalid_element_errors; end
  def logger; end
  def maximize_window(handle); end
  def native_args(args); end
  def needs_server?; end
  def network_traffic(*args, &block); end
  def no_such_window_error; end
  def open_new_window; end
  def options; end
  def paper_size=(*args, &block); end
  def parse_raw_cookie(raw); end
  def pause; end
  def process_browser_options(options); end
  def process_cw_options(cw_options); end
  def proxy_authorize(user = nil, password = nil); end
  def quit; end
  def refresh(*args, &block); end
  def remove_cookie(*args, &block); end
  def render(path, options = nil); end
  def render_base64(format = nil, options = nil); end
  def reset!; end
  def resize(width, height); end
  def resize_window(width, height); end
  def resize_window_to(handle, width, height); end
  def response_headers; end
  def restart(*args, &block); end
  def retry_if_wrong_world; end
  def save_screenshot(path, options = nil); end
  def screen_size; end
  def scroll_to(*args, &block); end
  def session_wait_time; end
  def set_cookie(name, value = nil, options = nil); end
  def set_proxy(host, port, type = nil, user_ = nil, password_ = nil, user: nil, password: nil, bypass: nil); end
  def source; end
  def status_code(*args, &block); end
  def switch_to_frame(*args, &block); end
  def switch_to_window(*args, &block); end
  def timeout; end
  def timeout=(sec); end
  def title(*args, &block); end
  def unwrap_script_result(arg, object_cache = nil); end
  def version; end
  def visit(url); end
  def wait?; end
  def window_handles(*args, &block); end
  def window_size(handle); end
  def within_window(selector, &block); end
  def zoom_factor=(*args, &block); end
  extend Forwardable
end
module Capybara::Apparition::DevToolsProtocol
end
class Capybara::Apparition::DevToolsProtocol::RemoteObject
  def array?; end
  def classname; end
  def classname?; end
  def css_style?; end
  def cyclic_checked_value(object_cache); end
  def date?; end
  def extract_properties_array(properties, object_cache); end
  def extract_properties_object(properties, object_cache); end
  def get_date_string(id); end
  def get_remote_object(id, own_props = nil); end
  def id; end
  def initialize(page, params); end
  def node?; end
  def object?; end
  def object_class?; end
  def params; end
  def subtype; end
  def type; end
  def validity_state?; end
  def value; end
  def window_class?; end
end
class Capybara::Apparition::Frame
  def context_id; end
  def context_id=(id); end
  def element_id; end
  def element_id=(arg0); end
  def id; end
  def initialize(page, params); end
  def loaded!; end
  def loaded?; end
  def loader_id; end
  def loader_id=(id); end
  def loading(id); end
  def loading?; end
  def obsolete!; end
  def obsolete?; end
  def parent_id; end
  def reloading!; end
  def state; end
  def state=(state); end
  def usable?; end
end
class Capybara::Apparition::FrameManager
  def [](id); end
  def add(id, frame_params = nil); end
  def cleanup_unused_obsolete; end
  def current; end
  def delete(id); end
  def destroy_context(ctx_id); end
  def exists?(id); end
  def get(id); end
  def initialize(id); end
  def main; end
  def pop_frame(top:); end
  def push_frame(id); end
end
class Capybara::Apparition::Mouse
  def click_at(x:, y:, button: nil, count: nil, delay: nil, modifiers: nil); end
  def down(button: nil, **options); end
  def initialize(page, keyboard); end
  def mouse_event(type, x:, y:, button: nil, count: nil); end
  def move_to(x:, y:, **options); end
  def up(button: nil, **options); end
end
class Capybara::Apparition::Keyboard
  def down(description); end
  def initialize(page); end
  def insert_emoji(str); end
  def key_description(key); end
  def modifier_bit(key); end
  def modifiers; end
  def press(key); end
  def release_pressed_keys; end
  def type(keys, delay:); end
  def type_with_modifiers(keys, delay:); end
  def up(description); end
  def with_keys(keys = nil); end
end
class Capybara::Apparition::Page
  def _execute_script(script, *args); end
  def _raw_evaluate(page_function, context_id: nil); end
  def accept_modal?(type, message:, manual:); end
  def add_extension(filename); end
  def add_modal(modal_response); end
  def async_command(name, **params); end
  def auto_unexpected_modal(type); end
  def browser_context_id; end
  def clear_network_traffic; end
  def click_at(x, y); end
  def command(name, **params); end
  def content; end
  def credentials=(creds); end
  def current_frame; end
  def current_frame_offset; end
  def current_state; end
  def current_url; end
  def element_from_point(x:, y:); end
  def eval_wrapped_script(wrapper, script, args); end
  def evaluate(script, *args); end
  def evaluate_async(script, _wait_time, *args); end
  def execute(script, *args); end
  def extra_headers; end
  def find(method, selector); end
  def frame_offset(frame); end
  def frame_title; end
  def frame_url; end
  def fullscreen; end
  def go_back; end
  def go_forward; end
  def go_history(delta); end
  def handle_proxy_auth(interception_id); end
  def handle_user_auth(interception_id); end
  def inherit(page); end
  def initialize(browser, session, target_id, browser_context_id, js_errors: nil, url_blacklist: nil, url_whitelist: nil, extensions: nil); end
  def js_error; end
  def keyboard; end
  def main_frame; end
  def manual_unexpected_modal(type); end
  def maximize; end
  def modal_messages; end
  def mouse; end
  def network_traffic; end
  def perm_headers; end
  def perm_headers=(arg0); end
  def pop_frame(top: nil); end
  def process_intercepted_fetch(interception_id, request, resource_type); end
  def process_response(response); end
  def proxy_credentials=(creds); end
  def push_frame(frame_el); end
  def refresh; end
  def register_event_handlers; end
  def register_js_error_handler; end
  def render(options); end
  def reset; end
  def response_headers; end
  def scroll_to(left, top); end
  def self.create(browser, session, id, browser_context_id, ignore_https_errors: nil, **options); end
  def set_viewport(width:, height:, screen: nil); end
  def setup_network_blocking; end
  def setup_network_interception; end
  def status_code; end
  def target_id; end
  def temp_headers; end
  def temp_headers=(arg0); end
  def temp_no_redirect_headers; end
  def temp_no_redirect_headers=(arg0); end
  def title; end
  def update_headers(async: nil); end
  def url_blacklist; end
  def url_blacklist=(blacklist); end
  def url_whitelist; end
  def url_whitelist=(whitelist); end
  def usable?; end
  def viewport_size; end
  def visit(url); end
  def wait_for_loaded(allow_obsolete: nil); end
end
class Capybara::Apparition::Console
  def clear; end
  def initialize(logger = nil); end
  def log(type, message, **options); end
  def messages(type = nil); end
end
class Capybara::Apparition::DevToolsProtocol::Session
  def async_command(name, **params); end
  def async_commands(*names); end
  def browser; end
  def command(name, **params); end
  def commands(*names); end
  def connection; end
  def initialize(browser, connection, session_id); end
  def on(event_name, &block); end
  def send_cmd(name, **params); end
  def session_id; end
end
module Capybara::Apparition::Browser::Header
  def add_header(header, permanent: nil, **_options); end
  def add_headers(headers); end
  def headers; end
  def headers=(headers); end
end
module Capybara::Apparition::Browser::Window
  def close_window(handle); end
  def current_window_handle; end
  def open_new_window; end
  def switch_to_window(handle); end
  def window_handles; end
end
module Capybara::Apparition::Browser::Render
  def check_render_options!(options, path = nil); end
  def paper_size=(size); end
  def render(path, options = nil); end
  def render_base64(options = nil); end
  def zoom_factor=(arg0); end
end
class Capybara::Apparition::Cookie
  def ==(other); end
  def domain; end
  def expires; end
  def httpOnly?; end
  def http_only?; end
  def httponly?; end
  def initialize(attributes); end
  def name; end
  def path; end
  def same_site; end
  def samesite; end
  def secure?; end
  def value; end
end
class Capybara::Apparition::CookieJar
  def [](name, domain = nil, path = nil); end
  def cookies; end
  def find(name, domain = nil, path = nil); end
  def initialize(browser); end
  def match_domain?(cookie, domain); end
  def match_path?(cookie, path); end
end
module Capybara::Apparition::Browser::Cookie
  def all_cookies; end
  def clear_cookies; end
  def cookies; end
  def cookies_enabled=(flag); end
  def get_raw_cookies; end
  def remove_cookie(name); end
  def set_cookie(cookie); end
end
module Capybara::Apparition::Browser::Modal
  def accept_alert; end
  def accept_confirm; end
  def accept_prompt(response); end
  def dismiss_confirm; end
  def dismiss_prompt; end
  def modal_message; end
end
class Capybara::Apparition::Browser::PageManager
  def [](id); end
  def blacklist=(list); end
  def create(id, session, ctx_id, **options); end
  def delete(id); end
  def each(&block); end
  def ids; end
  def initialize(browser); end
  def refresh(opener:, **page_options); end
  def reset; end
  def whitelist=(list); end
end
module Capybara::Apparition::Browser::Frame
  def switch_to_frame(frame); end
end
module Capybara::Apparition::Browser::Auth
  def set_auth(type, user, password); end
  def set_http_auth(user, password); end
  def set_proxy_auth(user, password); end
end
module Capybara::Apparition::Drag
  def drag_by(x, y, delay: nil); end
  def drag_to(other, delay: nil, html5: nil, drop_modifiers: nil); end
  def drop(*args); end
end
class Capybara::Apparition::Node < Capybara::Driver::Node
  def ==(other); end
  def [](name); end
  def _send_keys(*keys, delay: nil, **_opts); end
  def all_text; end
  def attribute(name); end
  def attributes; end
  def browser(*args, &block); end
  def checked?; end
  def click(keys = nil, button: nil, count: nil, delay: nil, **options); end
  def delete_text; end
  def disabled?; end
  def double_click(keys = nil, **options); end
  def element_click_pos(x: nil, y: nil, offset: nil, **arg3); end
  def evaluate_on(page_function, *args); end
  def filter_text(text); end
  def find(method, selector); end
  def find_css(selector); end
  def find_xpath(selector); end
  def focus; end
  def hover; end
  def id; end
  def in_view_client_rect(allow_scroll: nil); end
  def initialize(driver, page, remote_object, initial_cache); end
  def inner_html; end
  def inner_html=(value); end
  def keys_to_send(value, clear); end
  def mouse_event_test(x:, y:); end
  def mouse_event_test?(x:, y:); end
  def obscured?(**arg0); end
  def page_id; end
  def parents; end
  def path; end
  def process_response(response); end
  def property(name); end
  def rect; end
  def right_click(keys = nil, **options); end
  def scroll_by(x, y); end
  def scroll_element_to_location(element, location); end
  def scroll_if_needed; end
  def scroll_to(element, location, position = nil); end
  def scroll_to_coords(x, y); end
  def scroll_to_location(location); end
  def select_option; end
  def selected?; end
  def send_key(*keys, delay: nil, **opts); end
  def send_keys(*keys, delay: nil, **opts); end
  def set(value, **options); end
  def set_color(value); end
  def set_date(value); end
  def set_datetime_local(value); end
  def set_files(files); end
  def set_range(value); end
  def set_text(value, clear: nil, delay: nil, rapid: nil, **_unused); end
  def set_time(value); end
  def style(styles); end
  def submit; end
  def tag_name; end
  def text; end
  def top_left; end
  def trigger(name, event_type = nil, **options); end
  def unselect_option; end
  def update_value_js(value); end
  def value; end
  def visible?; end
  def visible_center(allow_scroll: nil); end
  def visible_text; end
  def visible_top_left; end
  extend Forwardable
  include Capybara::Apparition::Drag
end
class Capybara::Apparition::Node::SettableValue
  def dateable?; end
  def initialize(value); end
  def timeable?; end
  def to_date_str; end
  def to_datetime_str; end
  def to_s; end
  def to_time_str; end
  def value; end
end
class Capybara::Apparition::Inspector
  def browser; end
  def initialize(browser = nil, port = nil); end
  def open(scheme); end
  def port; end
  def self.browser_binary_exists?(browser); end
  def self.detect_browser; end
  def url(scheme); end
end
module Capybara::Apparition::NetworkTraffic
end
class Capybara::Apparition::NetworkTraffic::Request
  def blocked?; end
  def blocked_params=(arg0); end
  def error; end
  def headers; end
  def initialize(data, response_parts = nil); end
  def method; end
  def request_id; end
  def response; end
  def response=(response); end
  def response_parts; end
  def time; end
  def url; end
end
class Capybara::Apparition::NetworkTraffic::Response
  def body_size; end
  def content_type; end
  def error; end
  def from_cache?; end
  def headers; end
  def initialize(data); end
  def redirect_url; end
  def status; end
  def status_text; end
  def time; end
  def url; end
end
class Capybara::Apparition::NetworkTraffic::Error
  def code; end
  def description; end
  def initialize(url:, code:, description:); end
  def url; end
end
