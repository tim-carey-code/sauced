source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "aws-sdk-s3", require: false
gem "bootsnap", require: false
gem "bootstrap", "~> 5.2.2"
gem "devise"
gem "honeybadger"
gem "image_processing", "~> 1.2"
gem "importmap-rails"
gem "interactor-rails", "~> 2.0"
gem "jbuilder"
gem "jquery-rails"
gem "pg", "~> 1.4"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.4"
gem "redis", "~> 4.0"
gem "sassc-rails"
gem "sprockets-rails", "~> 3.4", ">= 3.4.2"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "view_component"

group :development, :test do
  gem "bundler-audit"
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "pry-byebug"
end

group :development do
  gem "annotate"
  gem "better_errors"
  gem "binding_of_caller"
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
