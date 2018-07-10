require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module EzEstagio
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.i18n.default_locale = 'pt-BR'
    config.time_zone = 'America/Sao_Paulo'

    # to skip assets, scaffolds.css, test framework, helpers, view
    config.generators do |g|
      g.template_engine false # to skip views
      g.test_framework  false # to skip test framework
      g.assets  false
      g.helper false
      g.stylesheets false
      g.jbuilder false
    end
  end
end
