module Api
  module Concepts
    module Multithreading
      module Operation
        class Fibers < Trailblazer::Operation
          include Api::Concepts::Multithreading::Lib::PerformAction

          step :generate_fibers

          DEFAULT_COUNT = 100

          def generate_fibers(ctx, params:, **)
            (params[:count].to_i || DEFAULT_COUNT).times do
              Fiber.new do
                thread_action(params)
                Fiber.yield
              end
            end
          end
        end
      end
    end
  end
end
