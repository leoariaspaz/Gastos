require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Gastos
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
		I18n.enforce_available_locales = false

		# Ver https://stackoverflow.com/a/6118837/32173
		config.time_zone = 'Buenos Aires'
		config.active_record.default_timezone = :local # Or :utc

		# Carga las validaciones personalizadas
		# config.autoload_paths += %W["#{Rails.root}/app/validators/"]

		# puts Rails.root
		# puts config.autoload_paths
  end
end
