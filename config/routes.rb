
Rails.application.routes.draw do resources :tasks 
  get "pricing/index"
  get "dashboard/index" 
  get "home/index"
  get "pricing", to: "pricing#index"
  post "/subscribe/free", to: "subscriptions#free"
  post '/subscribe/free', to: 'subscriptions#free', as: :subscriptions_free 
  post"/subscribe/pro", to: "subscriptions#pro"
   

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")

   authenticated :user do
  root "dashboard#index", as: :authenticated_root
  get "dashboard/premium_feature", to: "dashboard#premium_feature"  
  resources :tasks, only: [:index, :new, :create, :edit, :update]
  

end

unauthenticated do
  root "home#index", as: :unauthenticated_root
end
end
