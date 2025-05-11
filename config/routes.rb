Rails.application.routes.draw do
  devise_for :users
  get "users/index"
  get "users/new"
  get "users/create"
  get "users/show"
  get "users/update"
  get "users/show"
  get "users/destroy"
  
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  root to: "static#index"
  get "about", to: "static#about"
  get "products", to: "static#product"
  get "testimonial", to: "static#testimonial"
  get "why", to: "static#why"
  resources :cart_items, only: [:create, :index, :destroy]
  get 'static/index/:id', to: 'static#index', as: 'static_index'
  resource :cart, only: [:show]

  get "shopkeeper", to: "shopkeepers#show"
  get "school", to: "schools#show"


end
