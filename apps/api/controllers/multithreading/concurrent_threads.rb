module Api
  module Controllers
    module Multithreading
      class ConcurrentThreads
        include ::Api::Action
        accept :json

        def call(params)
          Api::Concepts::Multithreading::Operation::ConcurrentThreads.call(params: params)

          status 200, {}
        end
      end
    end
  end
end
