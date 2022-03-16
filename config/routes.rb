Rails.application.routes.draw do
  devise_for :users
  get '/', to: 'home#index'
  get '/features', to: 'home#features'
  get '/about', to: 'home#about'

  root 'home#index'
end
