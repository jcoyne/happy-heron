# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/warden/all/warden.rbi
#
# warden-1.2.9

module Warden
  def self.test_mode!; end
end
module Warden::Mixins
end
module Warden::Mixins::Common
  def params; end
  def raw_session; end
  def request; end
  def reset_session!; end
  def session; end
  def warden_cookies; end
end
class Warden::UserNotSet < RuntimeError
end
class Warden::Proxy
  def _fetch_strategy(name, scope); end
  def _perform_authentication(*args); end
  def _retrieve_scope_and_opts(args); end
  def _run_strategies_for(scope, args); end
  def _update_winning_strategy(strategy, scope); end
  def asset_request?; end
  def authenticate!(*args); end
  def authenticate(*args); end
  def authenticate?(*args); end
  def authenticated?(scope = nil); end
  def clear_strategies_cache!(*args); end
  def config; end
  def custom_failure!; end
  def custom_failure?; end
  def custom_response(*args, &block); end
  def default_strategies(*args, &block); end
  def env; end
  def errors; end
  def headers(*args, &block); end
  def initialize(env, manager); end
  def inspect(*args); end
  def lock!; end
  def logout(*scopes); end
  def manager; end
  def message; end
  def on_request; end
  def result; end
  def session(scope = nil); end
  def session_serializer; end
  def set_user(user, opts = nil); end
  def status(*args, &block); end
  def to_s(*args); end
  def unauthenticated?(scope = nil); end
  def user(argument = nil); end
  def winning_strategies; end
  def winning_strategy; end
  def winning_strategy=(arg0); end
  extend Forwardable
  include Warden::Mixins::Common
end
module Warden::Hooks
  def _after_failed_fetch; end
  def _after_set_user; end
  def _before_failure; end
  def _before_logout; end
  def _on_request; end
  def _run_callbacks(kind, *args); end
  def after_authentication(options = nil, method = nil, &block); end
  def after_failed_fetch(options = nil, method = nil, &block); end
  def after_fetch(options = nil, method = nil, &block); end
  def after_set_user(options = nil, method = nil, &block); end
  def before_failure(options = nil, method = nil, &block); end
  def before_logout(options = nil, method = nil, &block); end
  def on_request(options = nil, method = nil, &block); end
  def prepend_after_authentication(options = nil, &block); end
  def prepend_after_fetch(options = nil, &block); end
  def prepend_after_set_user(options = nil, &block); end
  def prepend_before_failure(options = nil, &block); end
  def prepend_before_logout(options = nil, &block); end
  def prepend_on_request(options = nil, &block); end
end
class Warden::Config < Hash
  def deep_dup(key, other); end
  def default_scope; end
  def default_scope=(value); end
  def default_strategies(*strategies); end
  def failure_app; end
  def failure_app=(value); end
  def initialize(other = nil); end
  def initialize_copy(other); end
  def intercept_401; end
  def intercept_401=(value); end
  def scope_defaults(scope, opts = nil); end
  def self.hash_accessor(*names); end
  def serialize_from_session(*args, &block); end
  def serialize_into_session(*args, &block); end
  def silence_missing_strategies!; end
  def silence_missing_strategies?; end
  def strategies; end
end
class Warden::Manager
  def _run_callbacks(*args); end
  def call(env); end
  def call_failure_app(env, options = nil); end
  def config; end
  def config=(arg0); end
  def handle_chain_result(status, result, env); end
  def initialize(app, options = nil); end
  def intercept_401?(env); end
  def process_unauthenticated(env, options = nil); end
  def self.serialize_from_session(scope = nil, &block); end
  def self.serialize_into_session(scope = nil, &block); end
  extend Warden::Hooks
end
class Warden::Proxy::Errors
  def add(field_name, message); end
  def blank?(thing); end
  def clear!; end
  def each; end
  def empty?; end
  def errors; end
  def full_messages; end
  def method_missing(meth, *args, &block); end
  def on(field_name); end
  include Enumerable
end
class Warden::SessionSerializer
  def delete(scope, user = nil); end
  def deserialize(key); end
  def env; end
  def fetch(scope); end
  def initialize(env); end
  def key_for(scope); end
  def serialize(user); end
  def session; end
  def store(user, scope); end
  def stored?(scope); end
end
module Warden::Strategies
  def self.[](label); end
  def self._strategies; end
  def self.add(label, strategy = nil, &block); end
  def self.clear!; end
  def self.update(label, &block); end
end
class Warden::Strategies::Base
  def _run!; end
  def clear!; end
  def custom!(response); end
  def custom_response; end
  def custom_response=(arg0); end
  def env; end
  def errors; end
  def fail!(message = nil); end
  def fail(message = nil); end
  def halt!; end
  def halted?; end
  def headers(header = nil); end
  def initialize(env, scope = nil); end
  def message; end
  def message=(arg0); end
  def pass; end
  def performed?; end
  def redirect!(url, params = nil, opts = nil); end
  def result; end
  def result=(arg0); end
  def scope; end
  def status; end
  def store?; end
  def success!(user, message = nil); end
  def successful?; end
  def user; end
  def user=(arg0); end
  def valid?; end
  include Warden::Mixins::Common
end
class Warden::NotAuthenticated < StandardError
end
module Warden::Test
end
