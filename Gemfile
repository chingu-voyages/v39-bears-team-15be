source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.5'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 5.0.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
gem 'bcrypt', '~> 3.1.7'
gem 'activerecord-import'
# gem 'dry-types', '~> 1.4.0'
# gem 'dry-validation', '~> 1.5.0'
gem 'jb', '~> 0.8.0'
gem "jsonb_accessor"
gem 'json-schema'
gem 'rswag'
gem 'jwt'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'
gem 'uuid', '~> 2.3', '>= 2.3.8'

group :development, :test do
  # A library for generating fake data such as names, addresses, and phone
  gem 'faker', :git => 'https://github.com/faker-ruby/faker.git', :branch => 'master'
  # A library for setting up Ruby objects as test data.
  gem 'factory_bot_rails'
  # Rspec
  gem 'rspec-rails', '~> 5.0.0'
  gem 'rswag-specs'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'dotenv-rails'
  gem 'pry', '~> 0.13.1'
end

group :development do
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
