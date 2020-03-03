module Api
  module Controllers
    module HelloWorld
      class Show
        include ::Api::Action
        accept :json

        def call(params)
          result = Api::Concepts::HelloWorld::Operation::Show.call(params: params)

          if result.success?
            status 201, result[:model].attributes.to_json
          else
            status 404, ''
          end
        end
      end
    end
  end
end
