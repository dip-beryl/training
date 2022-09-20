Rails.application.routes.draw do
  devise_for :admins
  # devise_for :admins, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  

  root "homepage#index"

  get "homepage/index"

  get 'register', to: 'users#register'
#  post 'register', to: 'users#create'


  get 'log_in', to: 'sessions#log_in'
  post 'log_in', to: 'sessions#create'

  delete 'log_out', to: 'sessions#destroy'

  resources :users
  
  resources :products
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  #custom help route
  get "help", to: "help#help_page"
end
