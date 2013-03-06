RebelOutpostFoundation::Application.routes.draw do
  devise_for :users

  devise_scope :user do
    match "logout" => "devise/sessions#destroy", :as => "logout"  
    match "login" => "devise/sessions#new", :as => "login"  
    match "signup" => "devise/registrations#new", :as => "signup"
  end

  resources :friends
  root to: 'pages#index'

end
