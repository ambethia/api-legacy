require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Ambethia
  class Application < Rails::Application
    config.time_zone = 'Eastern Time (US & Canada)'
    config.active_record.raise_in_transactional_callbacks = true
    config.secret_token = ENV["SECRET_KEY_BASE"]
  end
end
