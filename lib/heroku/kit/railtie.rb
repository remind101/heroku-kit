module Heroku
  module Kit
    class Railtie < ::Rails::Railtie
      initializer 'heroku-kit.middleware' do
        app.middleware.insert 0, Rack::RequestId
        app.middleware.insert_after Rack::RequestId, Rack::Instrumentation
      end
    end
  end
end
