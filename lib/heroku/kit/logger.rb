require 'logger'

module Heroku
  module Kit
    class Logger < ::Logger
      def initialize(logdev = STDOUT, *args)
        super
        self.formatter = Logging::Formatter.new
      end
    end
  end
end
