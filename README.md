Rebel Outpost Foundation
========================

Rebel Outpost Foundation is a bare bones starter app.  It is setup to use our favorites:

  - Devise
  - Mongodb
  - Mongoid
  - HAML
  - SASS
  - Pry


To Get Started
==============

If you do not have MongoDB installed, the best way to install it is to use Homebrew:
  - brew install mongodb

  1. Clone the project - git clone git@github.com:rebel-outpost/rebel-outpost-foundation.git (my_project_name)
  2. cd into (my_project_name)
  3. accept the .rvmrc
    3.1 You may need to install Ruby 1.9.3
    3.2 $ rvm install 1.9.3
    3.3 $ rvm use 1.9.3
  4. $ gem install bundler --pre
  5. Run 'bundle'
  6. Start your server 'rails s'
  7. Go to localhost:3000/signup to create a new user


Devise
======

Devise is already installed.  There are routes set for Devise:

  devise_scope :user do
    match "logout" => "devise/sessions#destroy", :as => "logout"  
    match "login" => "devise/sessions#new", :as => "login"  
    match "signup" => "devise/registrations#new", :as => "signup"
  end


Pages
=====

  There is a Pages controller which is setup to go to pages/index.  This is set as the root_to in the routes file.  If you want to have a landgin page and then after the user logs in it goes to another page, this can be set in the controllers/application controller:

    def after_sign_in_path_for(resource)
    #   if you need to redirect to another page, set that here
    end


Heroku
======

For using Heroku for deployment, please visit https://devcenter.heroku.com/articles/quickstart

  1. Create Heroku account if you do not have one
  2. Make sure that you have Heroku Toolbelt (https://toolbelt.heroku.com/) installed
  3. Login to Heroku 'heroku login'
  4. Create Heroku app 'heroku create "app_name"' where app_name is the name of your application
  5. git push heroku master  (You will need to have git esetup.  If you have not done so you can use:
                              $ git init
                              $ git add .
                              $ git commit -m "init")


Mongodb setup for Heroku
------------------------

If you are deploying to Heroku, you will need to have Mongodb database set up properly.

  1. Go to heroku.com and login to your account.
  2. Click on your app_name
  3. Click 'Get Add-ons'
  4. Install either the MongoHQ or the MongoLab free add-on.  I have used both and do not have any preference.


For MongoLab, the config/mongoid.yml file is already setup:

  production:
    sessions:
      default:
        uri: <%= ENV['MONGOLAB_URI'] %> 
        options:
          consistency: :strong

  To use MongoHQ, change the uri: <%= ENV['MONGOHQ_URL'] %>

