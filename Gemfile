source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.4"

gem "active_model_serializers", "~> 0.10.0"
gem "activeadmin"
gem "annotate"
gem "bootsnap", ">= 1.4.2", require: false
gem "devise"
gem "kaminari"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 4.1"
gem "rack-cors"
gem "rails", "~> 6.0.3", ">= 6.0.3.3"

group :development, :test do
  gem "awesome_print"
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "capybara"
  gem "database_cleaner"
  gem "factory_bot_rails"
  gem "faker"
  gem "hirb"
  gem "rails-controller-testing"
  gem "rspec-rails", "~> 4.0.1"
  gem "rubocop"
  gem "rubocop-rails", "~> 2.8.1"
end

group :development do
  gem "brakeman"
  gem "bullet"
  gem "listen", "~> 3.2"
  gem "rails-erd"
  gem "seed_dump"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "standard"
end
