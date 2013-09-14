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
end if Sidekiq.respond_to?(:configure_server)

Sidekiq.configure_client do |config|
  config.client_middleware do |chain|
    chain.add Sidekiq::Middleware::Client::RequestId
  end
end if Sidekiq.respond_to?(:configure_client)

Sidekiq.logger.formatter = Heroku::Kit::Sidekiq::Logger.new if Sidekiq.respond_to?(:logger)
