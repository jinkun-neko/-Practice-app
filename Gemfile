source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
ruby '2.7.2'
gem 'rails', '6.0.3'

gem 'bcrypt',       '3.1.13'
gem 'puma', '~> 4.1'
gem 'dotenv-rails'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootstrap-sass', '3.3.7'
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'mysql2', '>= 0.4.4'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'rspec-rails'
  gem 'spring-commands-rspec'
  gem 'capybara', '>= 2.15'
  gem "factory_bot_rails"
  gem 'faker'
  gem 'selenium-webdriver'
   # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]