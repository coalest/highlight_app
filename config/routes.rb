Rails.application.routes.draw do
  get 'static_pages/new'
  get 'users/new'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Just to test Device login system
  get "/secret", to: 'static_pages#secret'

  # Defines the root path route ("/")
  root to: 'application#index'
end
