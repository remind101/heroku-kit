Sidekiq.configure_server do |config|
  Sidekiq.configure_server do |config|
    config.client_middleware do |chain|
      chain.add Sidekiq::Middleware::Client::RequestId
    end

    config.server_middleware do |chain|
      chain.remove Sidekiq::Middleware::Server::Logging
      chain.add Sidekiq::Middleware::Client::RequestId
    end
  end
end

Sidekiq.configure_client do |config|
  config.client_middleware do |chain|
    chain.add Sidekiq::Middleware::Client::RequestId
  end
end

Sidekiq.logger = Heroku::Kit::Sidekiq::Logger.new
