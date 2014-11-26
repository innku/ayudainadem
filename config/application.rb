require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Inademtickets
  class Application < Rails::Application
    config.time_zone = 'Central Time (US & Canada)'
    config.i18n.default_locale = 'es-MX'

    WillPaginate.per_page = 10

    config.generators do |g|
      g.test_framework :rspec,
                        fixtures: true,
                      view_specs: false,
                    helper_specs: false,
                controller_specs: true,
                   request_specs: false
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
    end
  end
end
