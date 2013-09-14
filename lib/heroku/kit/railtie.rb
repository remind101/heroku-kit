module Heroku
  module Kit
    class Railtie < ::Rails::Railtie
      initializer 'heroku-kit.middleware' do |app|
        app.middleware.insert_after Rack::Timeout, Rack::RequestId
        app.middleware.insert_after Rack::RequestId, Rack::Instrumentation
      end

      config.after_initialize do
        begin
          ::Rails.logger.formatter.extend Heroku::Kit::Logging::Formatter
        rescue
          # ActiveSupport::BufferedLogger doesn't respond to formatter.
        end
      end
    end
  end
end
