module Api
  module Controllers
    module Multithreading
      class Fibers
        include ::Api::Action
        accept :json

        def call(params)
          Api::Concepts::Multithreading::Operation::Fibers.call(params: params)

          status 200, {}
        end
      end
    end
  end
end
