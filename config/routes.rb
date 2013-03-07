RebelOutpostFoundation::Application.routes.draw do
  resources :friends

  resource :session
  root to: 'pages#index'
end
