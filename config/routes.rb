Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users
      resources :applications
      resources :items
      resources :order_items
      resources :orders
    end  
  end 
    
    
    post '/login', to: 'login#login'
    
  end
