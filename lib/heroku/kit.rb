require 'heroku/kit/version'
require 'heroku/kit/railtie' if defined?(Rails)
require 'heroku/kit/sidekiq' if defined?(Sidekiq)
