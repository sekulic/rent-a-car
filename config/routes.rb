Rails.application.routes.draw do
  devise_for :users
  resources :comfort_types

  resources :cars
  root 'cars#index'
  get '/make_car_available', to: 'cars#car_available', via: [:post] 
  resources :rents, :only => [:create]    
end
