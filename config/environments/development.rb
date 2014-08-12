DoorkeeperDeviseClient::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true
end

PREDICSIS_APP_ID = "aa6b4eed8bf2f615b10df70eeb5663fbc1a396a9f68d91ed4b0acf621a5611e2"
PREDICSIS_APP_SECRET = "8d641bc46425ba40e61af114c8b2125f5fa021d0e1bb1f0be1273557aee347c7"
PREDICSIS_APP_URL = "http://localhost:3002"
