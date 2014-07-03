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

PREDICSIS_APP_ID = "a1fe436e0652dfea9a1d062d689a934072b438f4206f53ade470d697e1c9b74d"
PREDICSIS_APP_SECRET = "d33d8a0f61de20abd67b01c5331ea5060d42bac7e95eec7e8b58b109b3b43de2"
PREDICSIS_APP_URL = "http://id.predicsis.io"
