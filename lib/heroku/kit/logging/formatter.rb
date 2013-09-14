require 'logger'

module Heroku
  module Kit
    module Logging
      class Formatter < ::Logger::Formatter
        def initialize(*args)
          super
          extend RequestId
        end

        def call(severity, timestamp, progname, msg)
          "msg\n"
        end
      end
    end
  end
end
