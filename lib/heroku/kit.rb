require 'formatted-metrics'
require 'collective-metrics'
require 'rack-timeout'
require 'request_id'
require 'rails_12factor' if (ENV['RAILS_ENV'] || ENV['RACK_ENV']) == 'production'

require 'heroku/kit/version'

module Heroku
  module Kit
    autoload :Logger, 'heroku/kit/logger'

    module Logging
      autoload :RequestId, 'heroku/kit/logging/request_id'
      autoload :Formatter, 'heroku/kit/logging/formatter'
    end
  end
end

require 'heroku/kit/railtie' if defined?(Rails)
require 'heroku/kit/sidekiq' if defined?(Sidekiq)
