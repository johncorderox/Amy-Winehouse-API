source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.1"

gem 'activeadmin'
gem "annotate"
gem "bootsnap", ">= 1.4.2", require: false
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 4.1"
gem "rails", "~> 6.0.3", ">= 6.0.3.3"

group :development, :test do
  gem "awesome_print"
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "hirb"
  gem "rspec-rails", "~> 4.0.1"
  gem "rubocop"
  gem "rubocop-rails", "~> 2.8.1"
end

group :development do
  gem "brakeman"
  gem 'rails-erd'
  gem "listen", "~> 3.2"
  gem "seed_dump"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "standard"
end
