Rails.application.routes.draw do
  resources :scotches
  resources :reviews
  resources :users
  resources :sessions

  get '/auth/:provider/callback', to: 'sessions#facebook_create', as: 'facebook_create'
  get '/auth/failure', to: redirect('/')

  root 'sessions#new'
end
