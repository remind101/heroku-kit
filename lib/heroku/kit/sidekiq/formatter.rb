require 'sidekiq/logging'

module Heroku
  module Kit
    module Sidekiq
      class Formatter < ::Sidekiq::Logging::Pretty
        def call(severity, time, program_name, message)
          "severity=#{severity} pid=#{Process.pid} tid=#{Thread.current.object_id.to_s(36)}#{context} #{message}\n"
        end
      end
    end
  end
end
