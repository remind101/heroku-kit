require File.expand_path('../app', __FILE__)

describe App do
  describe 'middleware' do
    subject(:middleware) { App.config.middleware }

    it { should include Rack::Timeout }
    it { should include Rack::RequestId }
    it { should include Rack::Instrumentation }
  end
end

describe Sidekiq do
  describe 'client_middleware' do
    subject(:middleware) { Sidekiq.client_middleware.entries.map(&:klass) }

    it { should include Sidekiq::Middleware::Client::RequestId }
  end

  describe 'logger formatter' do
    subject(:formatter) { Sidekiq.logger.formatter }

    it { should be_a Heroku::Kit::Sidekiq::Formatter }
  end
end
