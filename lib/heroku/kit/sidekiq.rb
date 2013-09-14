module Heroku
  module Kit
    module Sidekiq
      autoload :Logger, 'heroku/kit/sidekiq/logger'
    end
  end
end

require 'heroku/kit/sidekiq/config'
