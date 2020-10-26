# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: ignore
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/actioncable/all/actioncable.rbi
#
# actioncable-6.0.3.4

module ActionCable
  def self.gem_version; end
  def self.server; end
  def self.version; end
  def server; end
  extend ActiveSupport::Autoload
end
module ActionCable::VERSION
end
module ActionCable::Helpers
end
module ActionCable::Helpers::ActionCableHelper
  def action_cable_meta_tag; end
end
class ActionCable::Engine < Rails::Engine
end
module ActionCable::Server
  extend ActiveSupport::Autoload
end
module ActionCable::Server::Broadcasting
  def broadcast(broadcasting, message, coder: nil); end
  def broadcaster_for(broadcasting, coder: nil); end
end
class ActionCable::Server::Broadcasting::Broadcaster
  def broadcast(message); end
  def broadcasting; end
  def coder; end
  def initialize(server, broadcasting, coder:); end
  def server; end
end
module ActionCable::Server::Connections
  def add_connection(connection); end
  def connections; end
  def open_connections_statistics; end
  def remove_connection(connection); end
  def setup_heartbeat_timer; end
end
class ActionCable::Server::Configuration
  def allow_same_origin_as_host; end
  def allow_same_origin_as_host=(arg0); end
  def allowed_request_origins; end
  def allowed_request_origins=(arg0); end
  def cable; end
  def cable=(arg0); end
  def connection_class; end
  def connection_class=(arg0); end
  def disable_request_forgery_protection; end
  def disable_request_forgery_protection=(arg0); end
  def initialize; end
  def log_tags; end
  def log_tags=(arg0); end
  def logger; end
  def logger=(arg0); end
  def mount_path; end
  def mount_path=(arg0); end
  def pubsub_adapter; end
  def url; end
  def url=(arg0); end
  def worker_pool_size; end
  def worker_pool_size=(arg0); end
end
class ActionCable::Server::Worker
  def __callbacks; end
  def __callbacks?; end
  def _run_work_callbacks(&block); end
  def _work_callbacks; end
  def async_exec(receiver, *args, connection:, &block); end
  def async_invoke(receiver, method, *args, connection: nil, &block); end
  def connection; end
  def connection=(obj); end
  def executor; end
  def halt; end
  def initialize(max_size: nil); end
  def invoke(receiver, method, *args, connection:, &block); end
  def logger; end
  def self.__callbacks; end
  def self.__callbacks=(val); end
  def self.__callbacks?; end
  def self._work_callbacks; end
  def self._work_callbacks=(value); end
  def self.connection; end
  def self.connection=(obj); end
  def stopping?; end
  def work(connection); end
  extend ActiveSupport::Callbacks::ClassMethods
  extend ActiveSupport::DescendantsTracker
  include ActionCable::Server::Worker::ActiveRecordConnectionManagement
  include ActiveSupport::Callbacks
end
module ActionCable::Server::Worker::ActiveRecordConnectionManagement
  def with_database_connections; end
  extend ActiveSupport::Concern
end
module ActionCable::Channel
  extend ActiveSupport::Autoload
end
module ActionCable::Channel::Callbacks
  extend ActiveSupport::Concern
  include ActiveSupport::Callbacks
end
module ActionCable::Channel::Callbacks::ClassMethods
  def after_subscribe(*methods, &block); end
  def after_unsubscribe(*methods, &block); end
  def before_subscribe(*methods, &block); end
  def before_unsubscribe(*methods, &block); end
  def on_subscribe(*methods, &block); end
  def on_unsubscribe(*methods, &block); end
end
module ActionCable::Channel::PeriodicTimers
  def active_periodic_timers; end
  def start_periodic_timer(callback, every:); end
  def start_periodic_timers; end
  def stop_periodic_timers; end
  extend ActiveSupport::Concern
end
module ActionCable::Channel::PeriodicTimers::ClassMethods
  def periodically(callback_or_method_name = nil, every:, &block); end
end
module ActionCable::Channel::Streams
  def default_stream_handler(broadcasting, coder:); end
  def identity_handler; end
  def pubsub(**, &&); end
  def stop_all_streams; end
  def stream_decoder(handler = nil, coder:); end
  def stream_for(model, callback = nil, coder: nil, &block); end
  def stream_from(broadcasting, callback = nil, coder: nil, &block); end
  def stream_handler(broadcasting, user_handler, coder: nil); end
  def stream_transmitter(handler = nil, broadcasting:); end
  def streams; end
  def worker_pool_stream_handler(broadcasting, user_handler, coder: nil); end
  extend ActiveSupport::Concern
end
module ActionCable::Channel::Naming
  def channel_name(**, &&); end
  extend ActiveSupport::Concern
end
module ActionCable::Channel::Naming::ClassMethods
  def channel_name; end
end
module ActionCable::Channel::Broadcasting
  def broadcast_to(**, &&); end
  def broadcasting_for(**, &&); end
  extend ActiveSupport::Concern
end
module ActionCable::Channel::Broadcasting::ClassMethods
  def broadcast_to(model, message); end
  def broadcasting_for(model); end
  def serialize_broadcasting(object); end
end
class ActionCable::Channel::Base
  def __callbacks; end
  def __callbacks?; end
  def _run_subscribe_callbacks(&block); end
  def _run_unsubscribe_callbacks(&block); end
  def _subscribe_callbacks; end
  def _unsubscribe_callbacks; end
  def action_signature(action, data); end
  def connection; end
  def defer_subscription_confirmation!; end
  def defer_subscription_confirmation?; end
  def delegate_connection_identifiers; end
  def dispatch_action(action, data); end
  def ensure_confirmation_sent; end
  def extract_action(data); end
  def identifier; end
  def initialize(connection, identifier, params = nil); end
  def logger(**, &&); end
  def params; end
  def perform_action(data); end
  def periodic_timers=(val); end
  def processable_action?(action); end
  def reject; end
  def reject_subscription; end
  def rescue_handlers; end
  def rescue_handlers=(val); end
  def rescue_handlers?; end
  def self.__callbacks; end
  def self.__callbacks=(val); end
  def self.__callbacks?; end
  def self._subscribe_callbacks; end
  def self._subscribe_callbacks=(value); end
  def self._unsubscribe_callbacks; end
  def self._unsubscribe_callbacks=(value); end
  def self.action_methods; end
  def self.clear_action_methods!; end
  def self.method_added(name); end
  def self.periodic_timers; end
  def self.periodic_timers=(val); end
  def self.periodic_timers?; end
  def self.rescue_handlers; end
  def self.rescue_handlers=(val); end
  def self.rescue_handlers?; end
  def subscribe_to_channel; end
  def subscribed; end
  def subscription_confirmation_sent?; end
  def subscription_rejected?; end
  def transmit(data, via: nil); end
  def transmit_subscription_confirmation; end
  def transmit_subscription_rejection; end
  def unsubscribe_from_channel; end
  def unsubscribed; end
  extend ActionCable::Channel::Broadcasting::ClassMethods
  extend ActionCable::Channel::Callbacks::ClassMethods
  extend ActionCable::Channel::Naming::ClassMethods
  extend ActionCable::Channel::PeriodicTimers::ClassMethods
  extend ActionPolicy::Channel::ClassMethods
  extend ActiveSupport::Callbacks::ClassMethods
  extend ActiveSupport::DescendantsTracker
  extend ActiveSupport::Rescuable::ClassMethods
  include ActionCable::Channel::Broadcasting
  include ActionCable::Channel::Callbacks
  include ActionCable::Channel::Naming
  include ActionCable::Channel::PeriodicTimers
  include ActionCable::Channel::Streams
  include ActionPolicy::Channel
  include ActiveSupport::Callbacks
  include ActiveSupport::Rescuable
end
class ActionCable::Server::Base
  def call(env); end
  def config; end
  def connection_identifiers; end
  def disconnect(identifiers); end
  def event_loop; end
  def initialize(config: nil); end
  def logger(**, &&); end
  def mutex; end
  def pubsub; end
  def remote_connections; end
  def restart; end
  def self.config; end
  def self.config=(obj); end
  def self.logger; end
  def worker_pool; end
  include ActionCable::Server::Broadcasting
  include ActionCable::Server::Connections
end
module ActionCable::Connection
  extend ActiveSupport::Autoload
end
module ActionCable::Connection::Identification
  def connection_gid(ids); end
  def connection_identifier; end
  extend ActiveSupport::Concern
end
module ActionCable::Connection::Identification::ClassMethods
  def identified_by(*identifiers); end
end
module ActionCable::Connection::InternalChannel
  def internal_channel; end
  def process_internal_message(message); end
  def subscribe_to_internal_channel; end
  def unsubscribe_from_internal_channel; end
  extend ActiveSupport::Concern
end
module ActionCable::Connection::Authorization
  def reject_unauthorized_connection; end
end
class ActionCable::Connection::Authorization::UnauthorizedError < StandardError
end
class ActionCable::Connection::Base
  def allow_request_origin?; end
  def beat; end
  def close(reason: nil, reconnect: nil); end
  def cookies; end
  def decode(websocket_message); end
  def dispatch_websocket_message(websocket_message); end
  def encode(cable_message); end
  def env; end
  def event_loop(**, &&); end
  def finished_request_message; end
  def handle_close; end
  def handle_open; end
  def identifiers; end
  def identifiers=(val); end
  def identifiers?; end
  def initialize(server, env, coder: nil); end
  def invalid_request_message; end
  def logger; end
  def message_buffer; end
  def new_tagged_logger; end
  def on_close(reason, code); end
  def on_error(message); end
  def on_message(message); end
  def on_open; end
  def process; end
  def protocol; end
  def pubsub(**, &&); end
  def receive(websocket_message); end
  def request; end
  def respond_to_invalid_request; end
  def respond_to_successful_request; end
  def self.identifiers; end
  def self.identifiers=(val); end
  def self.identifiers?; end
  def send_async(method, *arguments); end
  def send_welcome_message; end
  def server; end
  def started_request_message; end
  def statistics; end
  def subscriptions; end
  def successful_request_message; end
  def transmit(cable_message); end
  def websocket; end
  def worker_pool; end
  extend ActionCable::Connection::Identification::ClassMethods
  include ActionCable::Connection::Authorization
  include ActionCable::Connection::Identification
  include ActionCable::Connection::InternalChannel
end
class ActionCable::Connection::ClientSocket
  def alive?; end
  def begin_close(reason, code); end
  def client_gone; end
  def close(code = nil, reason = nil); end
  def emit_error(message); end
  def env; end
  def finalize_close; end
  def initialize(env, event_target, event_loop, protocols); end
  def open; end
  def parse(data); end
  def protocol; end
  def rack_response; end
  def receive_message(data); end
  def self.determine_url(env); end
  def self.secure_request?(env); end
  def start_driver; end
  def transmit(message); end
  def url; end
  def write(data); end
end
class ActionCable::Connection::MessageBuffer
  def append(message); end
  def buffer(message); end
  def buffered_messages; end
  def connection; end
  def initialize(connection); end
  def process!; end
  def processing?; end
  def receive(message); end
  def receive_buffered_messages; end
  def valid?(message); end
end
class ActionCable::Connection::Stream
  def clean_rack_hijack; end
  def close; end
  def each(&callback); end
  def flush_write_buffer; end
  def hijack_rack_socket; end
  def initialize(event_loop, socket); end
  def receive(data); end
  def shutdown; end
  def write(data); end
end
class ActionCable::Connection::StreamEventLoop
  def attach(io, stream); end
  def detach(io, stream); end
  def initialize; end
  def post(task = nil, &block); end
  def run; end
  def spawn; end
  def stop; end
  def timer(interval, &block); end
  def wakeup; end
  def writes_pending(io); end
end
class ActionCable::Connection::Subscriptions
  def add(data); end
  def connection; end
  def execute_command(data); end
  def find(data); end
  def identifiers; end
  def initialize(connection); end
  def logger(**, &&); end
  def perform_action(data); end
  def remove(data); end
  def remove_subscription(subscription); end
  def subscriptions; end
  def unsubscribe_from_all; end
end
class ActionCable::Connection::TaggedLoggerProxy
  def add_tags(*tags); end
  def debug(message); end
  def error(message); end
  def fatal(message); end
  def info(message); end
  def initialize(logger, tags:); end
  def log(type, message); end
  def tag(logger); end
  def tags; end
  def unknown(message); end
  def warn(message); end
end
class ActionCable::Connection::NonInferrableConnectionError < StandardError
  def initialize(name); end
end
module ActionCable::Connection::Assertions
  def assert_reject_connection(&block); end
end
class ActionCable::Connection::TestCookieJar < ActiveSupport::HashWithIndifferentAccess
  def encrypted; end
  def signed; end
end
class ActionCable::Connection::TestRequest < ActionDispatch::TestRequest
  def cookie_jar; end
  def cookie_jar=(arg0); end
  def session; end
  def session=(arg0); end
end
module ActionCable::Connection::TestConnection
  def initialize(request); end
  def logger; end
  def request; end
end
class ActionCable::Connection::TestCase < ActiveSupport::TestCase
  def _connection_class; end
  def _connection_class=(val); end
  def _connection_class?; end
  def connection; end
  def self._connection_class; end
  def self._connection_class=(val); end
  def self._connection_class?; end
  extend ActionCable::Connection::TestCase::Behavior::ClassMethods
  extend ActiveSupport::Testing::ConstantLookup::ClassMethods
  include ActionCable::Connection::TestCase::Behavior
  include ActiveSupport::Testing::ConstantLookup
end
module ActionCable::Connection::TestCase::Behavior
  def build_test_request(path, params: nil, headers: nil, session: nil, env: nil); end
  def connect(path = nil, **request_params); end
  def cookies; end
  def disconnect; end
  extend ActiveSupport::Concern
  include ActionCable::Connection::Assertions
  include ActiveSupport::Testing::ConstantLookup
end
module ActionCable::Connection::TestCase::Behavior::ClassMethods
  def connection_class; end
  def determine_default_connection(name); end
  def tests(connection); end
end
class ActionCable::Connection::WebSocket
  def alive?; end
  def close; end
  def initialize(env, event_target, event_loop, protocols: nil); end
  def possible?; end
  def protocol; end
  def rack_response; end
  def transmit(data); end
  def websocket; end
end
module ActionCable::TestHelper
  def after_teardown; end
  def assert_broadcast_on(stream, data); end
  def assert_broadcasts(stream, number); end
  def assert_no_broadcasts(stream, &block); end
  def before_setup; end
  def broadcasts(**, &&); end
  def broadcasts_size(channel); end
  def clear_messages(**, &&); end
  def pubsub_adapter; end
end
class ActionCable::Channel::NonInferrableChannelError < StandardError
  def initialize(name); end
end
module ActionCable::Channel::ChannelStub
  def confirmed?; end
  def rejected?; end
  def start_periodic_timers; end
  def stop_all_streams; end
  def stop_periodic_timers; end
  def stream_from(broadcasting, *arg1); end
  def streams; end
end
class ActionCable::Channel::ConnectionStub
  def identifiers; end
  def initialize(identifiers = nil); end
  def logger; end
  def subscriptions; end
  def transmissions; end
  def transmit(cable_message); end
end
class ActionCable::Channel::TestCase < ActiveSupport::TestCase
  def _channel_class; end
  def _channel_class=(val); end
  def _channel_class?; end
  def connection; end
  def self._channel_class; end
  def self._channel_class=(val); end
  def self._channel_class?; end
  def subscription; end
  extend ActionCable::Channel::TestCase::Behavior::ClassMethods
  extend ActiveSupport::Testing::ConstantLookup::ClassMethods
  include ActionCable::Channel::TestCase::Behavior
  include ActiveSupport::Testing::ConstantLookup
end
module ActionCable::Channel::TestCase::Behavior
  def assert_broadcast_on(stream_or_object, *args); end
  def assert_broadcasts(stream_or_object, *args); end
  def assert_has_stream(stream); end
  def assert_has_stream_for(object); end
  def assert_no_streams; end
  def broadcasting_for(stream_or_object); end
  def check_subscribed!; end
  def perform(action, data = nil); end
  def stub_connection(identifiers = nil); end
  def subscribe(params = nil); end
  def transmissions; end
  def unsubscribe; end
  extend ActiveSupport::Concern
  include ActionCable::TestHelper
  include ActiveSupport::Testing::ConstantLookup
end
module ActionCable::Channel::TestCase::Behavior::ClassMethods
  def channel_class; end
  def determine_default_channel(name); end
  def tests(channel); end
end
class ActionCable::RemoteConnections
  def initialize(server); end
  def server; end
  def where(identifier); end
end
class ActionCable::RemoteConnections::RemoteConnection
  def disconnect; end
  def identifiers; end
  def identifiers=(val); end
  def identifiers?; end
  def initialize(server, ids); end
  def self.identifiers; end
  def self.identifiers=(val); end
  def self.identifiers?; end
  def server; end
  def set_identifier_instance_vars(ids); end
  def valid_identifiers?(ids); end
  extend ActionCable::Connection::Identification::ClassMethods
  include ActionCable::Connection::Identification
end
class ActionCable::RemoteConnections::RemoteConnection::InvalidIdentifiersError < StandardError
end
module ActionCable::SubscriptionAdapter
  extend ActiveSupport::Autoload
end
class ActionCable::SubscriptionAdapter::Base
  def broadcast(channel, payload); end
  def initialize(server); end
  def logger; end
  def server; end
  def shutdown; end
  def subscribe(channel, message_callback, success_callback = nil); end
  def unsubscribe(channel, message_callback); end
end
class ActionCable::SubscriptionAdapter::Inline < ActionCable::SubscriptionAdapter::Base
  def broadcast(channel, payload); end
  def initialize(*arg0); end
  def new_subscriber_map; end
  def shutdown; end
  def subscribe(channel, callback, success_callback = nil); end
  def subscriber_map; end
  def unsubscribe(channel, callback); end
end
class ActionCable::SubscriptionAdapter::SubscriberMap
  def add_channel(channel, on_success); end
  def add_subscriber(channel, subscriber, on_success); end
  def broadcast(channel, message); end
  def initialize; end
  def invoke_callback(callback, message); end
  def remove_channel(channel); end
  def remove_subscriber(channel, subscriber); end
end
class ActionCable::SubscriptionAdapter::Async < ActionCable::SubscriptionAdapter::Inline
  def new_subscriber_map; end
end
class ActionCable::SubscriptionAdapter::Async::AsyncSubscriberMap < ActionCable::SubscriptionAdapter::SubscriberMap
  def add_subscriber(*arg0); end
  def initialize(event_loop); end
  def invoke_callback(*arg0); end
end
class ActionCable::SubscriptionAdapter::Test < ActionCable::SubscriptionAdapter::Async
  def broadcast(channel, payload); end
  def broadcasts(channel); end
  def channels_data; end
  def clear; end
  def clear_messages(channel); end
end
module ActionCable::SubscriptionAdapter::ChannelPrefix
  def broadcast(channel, payload); end
  def channel_with_prefix(channel); end
  def subscribe(channel, callback, success_callback = nil); end
  def unsubscribe(channel, callback); end
end
class ActionCable::TestCase < ActiveSupport::TestCase
  include ActionCable::TestHelper
end
