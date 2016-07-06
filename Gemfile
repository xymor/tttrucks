source 'https://rubygems.org'

ruby "2.3.0"

gem 'rails', '~> 5.0.0'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'

gem 'bcrypt'
gem 'mongoid', git: 'https://github.com/mongodb/mongoid.git'
gem 'devise'

gem "therubyracer"
gem "less-rails"
gem "twitter-bootstrap-rails"
#gem 'rails_admin'
gem 'cancancan', '~> 1.10'
gem 'rolify'

gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

group :production do
  gem 'rails_12factor'
end

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails'
  gem 'rspec-mocks'
  gem 'simplecov'
  gem "factory_girl_rails"
  gem 'guard-rspec'
  gem 'database_cleaner'
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
