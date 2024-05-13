# frozen_string_literal: true

# Load the Rails application.
require_relative 'application'

# Configure web_console only in development environment
if Rails.env.development?
  Rails.application.configure do
    config.web_console.allowed_ips = '127.0.0.1'
  end
end

# Initialize the Rails application.
Rails.application.initialize!
