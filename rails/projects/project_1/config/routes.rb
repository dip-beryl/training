Rails.application.routes.draw do
  get 'users/sign_up'
  get 'users/sign_in'
  
  # get 'users/create'
  # get 'users/new'
  # get 'users/show'

  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
