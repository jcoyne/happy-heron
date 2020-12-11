# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/capybara-screenshot/all/capybara-screenshot.rbi
#
# capybara-screenshot-1.0.25

class CapybaraScreenshot
end
module CapybaraScreenshot::Helpers
  def black(text); end
  def blue(text); end
  def bright_black(text); end
  def bright_blue(text); end
  def bright_cyan(text); end
  def bright_green(text); end
  def bright_magenta(text); end
  def bright_purple(text); end
  def bright_red(text); end
  def bright_white(text); end
  def bright_yellow(text); end
  def cyan(text); end
  def green(text); end
  def magenta(text); end
  def purple(text); end
  def red(text); end
  def white(text); end
  def yellow(text); end
  extend CapybaraScreenshot::Helpers
end
module Capybara
end
module Capybara::Screenshot
  def self.after_save_html(&block); end
  def self.after_save_screenshot(&block); end
  def self.append_random; end
  def self.append_random=(arg0); end
  def self.append_screenshot_path=(value); end
  def self.append_timestamp; end
  def self.append_timestamp=(arg0); end
  def self.autosave_on_failure; end
  def self.autosave_on_failure=(arg0); end
  def self.capybara_root; end
  def self.capybara_tmp_path; end
  def self.capybara_tmp_path=(path); end
  def self.filename_prefix_for(test_type, test); end
  def self.filename_prefix_formatters; end
  def self.filename_prefix_formatters=(arg0); end
  def self.final_session_name; end
  def self.final_session_name=(arg0); end
  def self.new_saver(*args); end
  def self.prune(options = nil); end
  def self.prune_strategy; end
  def self.prune_strategy=(arg0); end
  def self.register_driver(driver, &block); end
  def self.register_filename_prefix_formatter(test_type, &block); end
  def self.registered_drivers; end
  def self.registered_drivers=(arg0); end
  def self.reset_prune_history; end
  def self.s3_configuration; end
  def self.s3_configuration=(arg0); end
  def self.s3_object_configuration; end
  def self.s3_object_configuration=(arg0); end
  def self.screen_shot_and_open_image; end
  def self.screen_shot_and_save_page; end
  def self.screenshot_and_open_image; end
  def self.screenshot_and_save_page; end
  def self.webkit_options; end
  def self.webkit_options=(arg0); end
end
module Capybara::Screenshot::Callbacks
  def self.included(receiver); end
end
class Capybara::Screenshot::Callbacks::CallbackSet < Array
  def call(*args); end
end
module Capybara::Screenshot::Callbacks::ClassMethods
  def callbacks; end
  def define_callback(name); end
  def run_callbacks(name, *args); end
end
module Capybara::Screenshot::Callbacks::InstanceMethods
  def run_callbacks(name, *args); end
end
class Capybara::Screenshot::Saver
  def capybara; end
  def clear_save_path; end
  def current_path; end
  def display_image; end
  def file_base_name; end
  def html_path; end
  def html_saved?; end
  def imgcat; end
  def initialize(capybara, page, html_save = nil, filename_prefix = nil); end
  def output(message); end
  def output_screenshot_path; end
  def page; end
  def save; end
  def save_html; end
  def save_screenshot; end
  def screenshot_path; end
  def screenshot_saved?; end
  def self.after_save_html(&block); end
  def self.after_save_screenshot(&block); end
  def which(cmd); end
  extend Capybara::Screenshot::Callbacks::ClassMethods
  include Capybara::Screenshot::Callbacks
  include Capybara::Screenshot::Callbacks::InstanceMethods
end
module InvalidName___Class_0x00___ScreenshotOverrides_112
  def using_session(name, &block); end
  def using_session_with_screenshot(name, &block); end
end
module Capybara::DSL
  def screenshot_and_open_image; end
  def screenshot_and_save_page; end
end
class Capybara::Screenshot::Pruner
  def initialize(strategy); end
  def prune_old_screenshots; end
  def prune_with_last_run_strategy; end
  def prune_with_numeric_strategy(count); end
  def strategy; end
  def strategy_proc; end
  def wildcard_path; end
end
