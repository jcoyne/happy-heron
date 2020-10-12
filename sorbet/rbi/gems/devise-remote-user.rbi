# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/devise-remote-user/all/devise-remote-user.rbi
#
# devise-remote-user-1.0.0

module DeviseRemoteUser
  def self.attribute_map; end
  def self.attribute_map=(arg0); end
  def self.auth_key; end
  def self.auth_key=(arg0); end
  def self.auto_create; end
  def self.auto_create=(arg0); end
  def self.auto_update; end
  def self.auto_update=(arg0); end
  def self.configure; end
  def self.env_key; end
  def self.env_key=(arg0); end
  def self.logout_url; end
  def self.logout_url=(arg0); end
  def self.remote_user_id(env); end
end
class DeviseRemoteUser::Engine < Rails::Engine
end
module DeviseRemoteUser::ControllerBehavior
  def after_sign_out_path_for(resource_or_scope); end
  def remote_user_authenticated?; end
end
class Devise::Mapping
  def remote_user_authenticatable?; end
end
module Devise
end
module Devise::Strategies
end
class Devise::Strategies::RemoteUserAuthenticatable < Devise::Strategies::Authenticatable
  def authenticate!; end
  def valid?; end
end
class DeviseRemoteUser::Manager
  def auth_key; end
  def create_user; end
  def env; end
  def find_or_create_user; end
  def find_user; end
  def initialize(klass, env); end
  def klass; end
  def remote_user_attributes; end
  def remote_user_id; end
  def update_user(user); end
  def user_criterion; end
end
module Devise::Models
end
module Devise::Models::RemoteUserAuthenticatable
  extend ActiveSupport::Concern
end
