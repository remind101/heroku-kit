module Heroku
  module Kit
    module Logging
      module RequestId
        def call(severity, timestamp, progname, msg)
          if request_id
            "request_id=#{request_id} #{super}"
          else
            super
          end
        end

      private

        def request_id
          ::RequestId.request_id
        end
      end
    end
  end
end
