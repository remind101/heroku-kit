class Logger::SimpleFormatter
  def initialize(*args)
    super
    extend Heroku::Kit::Logging::RequestId
  end
end

module Heroku
  module Kit
    class Railtie < ::Rails::Railtie
      initializer 'heroku-kit.middleware' do |app|
        app.middleware.insert_after Rack::Timeout, Rack::RequestId
        app.middleware.insert_after Rack::RequestId, Rack::Instrumentation
      end
    end
  end
end
