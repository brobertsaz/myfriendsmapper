source 'https://rubygems.org'

gem 'rails', '3.2.8'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'mongoid'
gem 'bson_ext'
gem 'rails3-generators'
gem 'simple_form'
gem 'haml'
gem 'haml-rails'
gem 'devise'
gem 'bcrypt-ruby'

group :production do
  gem 'thin'
  # ruby 1.9.3 is needed for heroku
  ruby '1.9.3'
end

group :development do
  gem 'heroku'
  gem 'taps'
  gem 'unicorn'
  gem 'hpricot'
  gem 'pry-rails'
end

group :test, :development do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'launchy'
  gem 'database_cleaner'
  gem 'mongoid-rspec'
  gem 'timecop'
  gem 'vcr'
  gem 'email_spec' 
  gem 'pry'
  gem 'pry-nav'
  gem 'puma'
  # Pretty printed test output
  gem 'turn', require: false
end