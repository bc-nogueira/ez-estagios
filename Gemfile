source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.1'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.0'
gem 'therubyracer'

gem 'bootstrap', '~> 4.1', '>= 4.1.1'
source 'https://rails-assets.org' do
  gem 'rails-assets-bootstrap-datepicker'
end
gem 'font-awesome-rails'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'

gem 'devise', '~> 4.4', '>= 4.4.3'
gem 'devise-i18n'
gem 'uglifier', '>= 1.3.0'
gem 'carrierwave'
gem 'mini_magick'
gem 'active_link_to'

group :development, :test do
  gem 'awesome_print', '~> 1.8'
  gem 'pry', '~> 0.11.3'
  # Use sqlite3 as the database for Active Record
  gem 'rubocop'
  gem 'sqlite3'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'chromedriver-helper'
  gem 'selenium-webdriver'
end

group :production do
  # Postgres para rodar o app no Heroku
  # gem 'pg', '~> 1.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
