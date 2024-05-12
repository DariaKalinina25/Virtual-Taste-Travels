# frozen_string_literal: true

Rails.application.configure do
  # Enable/disable caching. By default caching is disabled.
  if Rails.root.join('tmp', 'caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Enable/disable showing full error reports.
  config.consider_all_requests_local = true

  # Store uploaded files on the local file system in development.
  config.active_storage.service = :local

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Enable/disable the browser console with `binding_of_caller` gem.
  config.web_console.whitelisted_ips = '192.168.0.0/16'

  # Perform caching in development mode.
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true
    config.action_controller.enable_fragment_cache_logging = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end
end
