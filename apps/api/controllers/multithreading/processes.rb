module Api
  module Controllers
    module Multithreading
      class Processes
        include ::Api::Action
        accept :json

        def call(params)
          Api::Concepts::Multithreading::Operation::Processes.call(params: params)

          status 200, {}
        end
      end
    end
  end
end
