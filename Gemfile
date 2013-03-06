source 'https://rubygems.org'

gem 'rails', '~> 3.2.12'

group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
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
gem 'gmaps4rails'

group :production do
  gem 'thin'
  ruby '2.0.0'
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