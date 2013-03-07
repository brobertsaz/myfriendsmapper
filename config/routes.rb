RebelOutpostFoundation::Application.routes.draw do
  resources :friends
  root to: 'pages#index'
end
