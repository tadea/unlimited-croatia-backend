Rails.application.routes.draw do
  
  namespace :api do 
    namespace :v1 do
      resources :locations do
        resources :beaches
      end
    end
  end
  
end
