source 'https://rubygems.org'

gem 'rake'
gem 'hanami', '~> 1.3'
gem 'hanami-validations', '~> 2.0.alpha'

gem "rom",     "~> 5.0"
gem "rom-sql", "~> 3.0"

gem 'pg'

gem 'puma'

group :development do
  # Code reloading
  # See: https://guides.hanamirb.org/projects/code-reloading
  gem 'shotgun', platforms: :ruby
  gem 'hanami-webconsole'
end

group :test, :development do
  gem 'dotenv', '~> 2.4'
  gem 'pry'
end

group :test do
  gem 'rspec'
  gem 'capybara'
end

group :production do
  # gem 'puma'
end
