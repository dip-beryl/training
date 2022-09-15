Rails.application.routes.draw do

  root "users#index"

  get 'sign_up', to: 'users#sign_up'
#  post 'sign_up', to: 'users#create'


  get 'sign_in', to: 'sessions#sign_in'
  post 'sign_in', to: 'sessions#create'

  delete 'sign_out', to: 'sessions#destroy'
  
  # get 'users/create'
  # get 'users/new'
  # get 'users/show'

  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
