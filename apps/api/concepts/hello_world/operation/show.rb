module Api
  module Concepts
    module HelloWorld
      module Operation
        class Show < Trailblazer::Operation
          step :model

          def model(ctx, params:, **)
            ctx[:model] = TestHanamiApp::Repositories[:HelloWorld].find_by(name: params[:name])
          end
        end
      end
    end
  end
end
