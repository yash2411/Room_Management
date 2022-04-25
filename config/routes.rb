Rails.application.routes.draw do
  get 'rooms/index'
  get 'rooms/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "rooms#index"
  resources :rooms
end
