require 'formatted-metrics'
require 'collective-metrics'
require 'rack-timeout'
require 'request_id'

begin
  require 'sidekiq'
rescue LoadError
  # No Sidekiq
end

require 'heroku/kit/version'
require 'heroku/kit/railtie' if defined?(Rails)
require 'heroku/kit/sidekiq' if defined?(Sidekiq)
