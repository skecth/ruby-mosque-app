Rails.application.routes.draw do
  resources :registers
  devise_for :kariahs
  devise_for :ajks
  root 'home#index'
  #get '/ajks' => "home#index", :as => :ajk_root
  resources :activities
  get '/kariahs' => "home#userindex", :as => :kariah_root
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
