module TestHanamiApp
  module Persistence
    module Relations
      class HelloWorlds < ROM::Relation[:sql]
        schema(:hello_worlds, infer: true)
      end
    end
  end
end
