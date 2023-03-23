Rails.application.routes.draw do
  resources :registers
  devise_for :kariahs
  devise_for :ajks
  root 'home#index'
  #get '/registers/' to: 'register#register_show_new'
  resources :activities
  get '/kariahs' => "home#userindex", :as => :kariah_root

end
