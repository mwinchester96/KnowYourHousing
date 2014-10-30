Rails.application.routes.draw do
  resources :reviews

  get '/auth/:provider/callback', to: 'sessions#facebook_create', as: 'facebook_create'
  get '/auth/failure', to: redirect('/')

  root 'static#home'
end
