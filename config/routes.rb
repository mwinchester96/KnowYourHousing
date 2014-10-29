Rails.application.routes.draw do
  resources :reviews

  get '/auth/:provider/callback', to: 'sessions#create'

  root 'reviews#index'
end
