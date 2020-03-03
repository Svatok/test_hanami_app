require 'rom'

module TestHanamiApp
  module Persistence
    def self.db
      @rom ||= ROM.container(configuration)
    end

    def self.relations
      db.relations
    end

    def self.configuration
      @configuration ||= ROM::Configuration.new(:sql, ENV.fetch('DATABASE_URL'), options).tap do |config|
        config.auto_registration(
          Hanami.root.join('lib/test_hanami_app/persistence'), namespace: 'TestHanamiApp::Persistence'
        )
      end
    end

    def self.options
      { logger: Hanami.logger }
    end
  end
end
