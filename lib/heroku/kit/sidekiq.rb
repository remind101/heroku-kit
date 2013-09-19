module Heroku
  module Kit
    module Sidekiq
      autoload :Formatter, 'heroku/kit/sidekiq/formatter'
    end
  end
end

require 'heroku/kit/sidekiq/config'
