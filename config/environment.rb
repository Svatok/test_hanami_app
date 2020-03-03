require 'bundler/setup'
require 'hanami/setup'
require 'hanami/middleware/body_parser'
require_relative '../lib/test_hanami_app'
require_relative '../apps/web/application'

Hanami.configure do
  mount Web::Application, at: '/'

  mailer do
    root 'lib/test_hanami_app/mailers'

    # See https://guides.hanamirb.org/mailers/delivery
    delivery :test
  end

  environment :development do
    # See: https://guides.hanamirb.org/projects/logging
    logger level: :debug
  end

  environment :production do
    logger level: :info, formatter: :json, filter: []

    mailer do
      delivery :smtp, address: ENV.fetch('SMTP_HOST'), port: ENV.fetch('SMTP_PORT')
    end
  end

  middleware.use Hanami::Middleware::BodyParser, :json
  early_hints true
end
