# frozen_string_literal: true

Rails.application.configure do
  if Rails.root.join('tmp', 'caching-dev.txt').exist?
    # Enable caching
    config.action_controller.perform_caching = true
    config.action_controller.enable_fragment_cache_logging = true
    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.to_i}"
    }
  else
    # Disable caching
    config.action_controller.perform_caching = false
    config.cache_store = :null_store
  end

  # General configurations
  config.eager_load = false
  config.consider_all_requests_local = true
  config.active_storage.service = :local
  config.active_record.migration_error = :page_load
  config.web_console.whitelisted_ips = '192.168.0.0/16'
end
