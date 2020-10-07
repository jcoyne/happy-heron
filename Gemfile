# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'bootsnap', '>= 1.4.2', require: false
gem 'config', '~> 2.2'
gem 'dor-services-client'
gem 'pg'
gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
gem 'sidekiq', '~> 6.1'
gem 'sorbet-runtime'
gem 'turbolinks', '~> 5'
gem 'view_component', '~> 2.18'
gem 'webpacker', '~> 5.0'

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubocop-sorbet', require: false
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'puma', '~> 4.1'
  gem 'sorbet'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

group :deployment do
  gem 'capistrano-passenger', require: false
  gem 'capistrano-rails', require: false
  gem 'capistrano-rvm', require: false
  gem 'dlss-capistrano', '~> 3.6', require: false
end
