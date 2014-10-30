Rails.application.routes.draw do
  resources :reviews
  resources :users

  get '/auth/:provider/callback', to: 'sessions#facebook_create', as: 'facebook_create'
  get '/auth/failure', to: redirect('/')

  root 'sessions#new'
end
