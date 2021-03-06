require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Schedule
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

  	config.action_mailer.default_url_options = { host: 'http://localhost:3000/' }
  	config.action_mailer.asset_host = 'http://localhost:3000/'

	  # config.active_job.queue_adapter = Rails.env.production? ? :sidekiq : :async
    config.time_zone = 'Kolkata'
    config.active_job.queue_adapter = :sidekiq

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
