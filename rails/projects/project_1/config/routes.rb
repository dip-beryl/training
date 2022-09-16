Rails.application.routes.draw do

  root "sessions#log_in"

  get 'register', to: 'users#register'
#  post 'register', to: 'users#create'


  get 'log_in', to: 'sessions#log_in'
  post 'log_in', to: 'sessions#create'

  delete 'log_out', to: 'sessions#destroy'

  resources :users
  
  resources :products
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
