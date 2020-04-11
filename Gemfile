source 'https://rubygems.org'

gem 'hanami', '~> 1.3'
gem 'hanami-validations', '~> 2.0.alpha'
gem 'rake'

gem 'rom',     '~> 5.0'
gem 'rom-sql', '~> 3.0'

gem 'pg'

gem 'puma'
gem 'trailblazer', '~> 2.1'

gem 'concurrent-ruby', '~> 1.0'

group :development do
  # Code reloading
  # See: https://guides.hanamirb.org/projects/code-reloading
  gem 'hanami-webconsole'
  gem 'shotgun', platforms: :ruby
end

group :test, :development do
  gem 'dotenv', '~> 2.4'
  gem 'pry'
end

group :test do
  gem 'capybara'
  gem 'rspec'
end

group :production do
  # gem 'puma'
end
