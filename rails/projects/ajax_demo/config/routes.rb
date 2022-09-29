Rails.application.routes.draw do
  root "products#one_view"

  get "products/one_view"

  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
