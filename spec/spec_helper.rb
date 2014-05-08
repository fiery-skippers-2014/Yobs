# This file is copied to spec/ when you run 'rails generate rspec:install'
require 'simplecov'
SimpleCov.start

ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

RSpec.configure do |config|

  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.use_transactional_fixtures = false

  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation


      if RUBY_PLATFORM =~ /darwin/
      # Focus on Terminal
      system %{osascript -e 'tell application "Terminal" to activate'}
      # Send CMD+K to clear
      system %{osascript -e 'if application "Terminal" is frontmost then tell application "System Events" to keystroke "k" using command down'}
      # CMD-TAB to return focus to previous application
      system %{osascript -e 'tell application "System Events" to keystroke tab using command down'}
    end
    
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
  config.infer_base_class_for_anonymous_controllers = false

  config.order = "random"
end