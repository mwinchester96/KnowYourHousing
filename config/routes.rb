Rails.application.routes.draw do
  resources :realtors
  resources :properties
  resources :property_reviews
  resources :dorms
  resources :dorm_reviews
  resources :reviews
  resources :users
  resources :sessions
  match '/contact',  to: 'pages#contact', via: [:get]

  get '/auth/:provider/callback', to: 'sessions#facebook_create', as: 'facebook_create'
  get '/auth/failure', to: redirect('/')

  root 'sessions#new'
end
