Rails.application.routes.draw do
    
    # Defines the root path route ("/")
    # root route to index
  root "blogs#index"

    #simple match route
  get 'blogs/about'

    #resourceful routes
  resources :blogs 
  
    #when bad route is accessed 
  get ':not_found' => redirect('/'), :constraints => { :not_found => /.*/ }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

end
