Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users
      resources :favorites
      resources :applications
      resources :items
      resources :order_items
      resources :orders
    end  
  end 
    
    
    post '/login', to: 'login#login'
    post '/charges', to: 'charges#session'

    
  end
