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
gem 'carrierwave' 
gem 'mini_magick'  
gem 'rails-i18n'
gem 'bootstrap-sass', '3.3.7'
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'mysql2', '>= 0.4.4'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'faker', git: 'https://github.com/stympy/faker.git', branch: 'master'
  gem 'forgery_ja'
  gem 'factory_bot_rails', '~> 4.10.0'
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
  gem 'rspec-rails'
  gem 'capybara', '~> 2.15.4'
  gem 'spring-commands-rspec'
  gem 'webdrivers'
  gem 'launchy', '~> 2.4.3'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]