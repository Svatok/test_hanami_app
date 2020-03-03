module Web
  module Controllers
    module HelloWorld
      class Show
        include ::Web::Action
        accept :json

        def call(params)
          result = TestHanamiApp::Repositories[:HelloWorld].find_by(name: params[:name])

          if result
            status 201, result.attributes.to_json
          else
            status 404, ''
          end
        end
      end
    end
  end
end
