# frozen_string_literal: true

require_relative 'boot'
require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_mailbox/engine'
require 'action_text/engine'
# require 'action_view/railtie'
require 'action_cable/engine'
require 'rails/test_unit/railtie'

# Require 'he gems listed in Gemfile, including any gem'
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module NewsApi
  class Application < Rails::Application
    require 'dotenv'
    Dotenv.load('config/.env.local')

    config.load_defaults 6.0
    config.api_only = true
    config.debug_exception_response_format = :api
  end
end
