module Api
  module Controllers
    module Multithreading
      class Threads
        include ::Api::Action
        accept :json

        def call(params)
          Api::Concepts::Multithreading::Operation::Threads.call(params: params)

          status 200, {}
        end
      end
    end
  end
end
