module Heroku
  module Kit
    class Railtie < ::Rails::Railtie
      require 'rails_12factor' if ::Rails.env.production?

      initializer 'heroku-kit.middleware' do |app|
        app.middleware.insert_after Rack::Timeout, Rack::RequestId
        app.middleware.insert_after Rack::RequestId, Rack::Instrumentation
      end

      config.before_initialize do
        begin
          Heroku::Kit.setup_logger(::Rails.logger)
        rescue
          # Nothing to see here.
        end
      end
    end
  end
end
