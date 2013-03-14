RebelOutpostFoundation::Application.routes.draw do
  resources :friends
  resources :users

  resource :session
  root to: 'pages#index'
end
