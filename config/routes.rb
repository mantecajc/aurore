Rails.application.routes.draw do

  resources :songs
  
  root 'home#index'
  
end
