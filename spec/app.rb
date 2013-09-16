ENV['RAILS_ENV'] ||= 'production'

require 'bundler/setup'
require 'action_controller/railtie'
require 'heroku-kit'

App ||= Class.new(Rails::Application) {
  config.eager_load = false
  config.secret_token = SecureRandom.hex
  routes.append {
    root to: proc {
      Rails.logger.info 'Hello World'
      [200, {'Content-Type' => 'text/plain'}, ['Ok']]
    }
  }
  initialize!
}
