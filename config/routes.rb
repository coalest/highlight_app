Rails.application.routes.draw do
  get '/', to: 'home#index'
  get '/features', to: 'home#features'
  get '/about', to: 'home#about'

  root 'home#index'
end
