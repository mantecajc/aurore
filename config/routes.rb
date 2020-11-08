Rails.application.routes.draw do

  resources :songs
  
  root 'home#index'

  get "studio" => "studio#index" 
  
end
