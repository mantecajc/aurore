Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  resources :homes
  resources :studios, only: [:index, :new, :create, :edit, :update]
  resources :songs
 
  get '/sound-designs' => 'sound_designs#index'
  get '/sound-designs/new' => 'sound_designs#new'
  post '/sound-designs' => 'sound_designs#create'
  get '/sound-designs/:id' => 'sound_designs#show', as: 'sound_design'
  get '/sound-designs/:id/edit' => 'sound_designs#edit', as: 'sound_design_edit'
  patch '/sound-designs/:id' => 'sound_designs#update'
  put '/sound-designs/:id' => 'sound_designs#update'
  delete '/sound-designs/:id' => 'sound_designs#destroy'

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
  
end


