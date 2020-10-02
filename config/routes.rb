Rails.application.routes.draw do
  

  devise_for :users

  root to: 'items#index'

  get 'items/search'

  
  resources :items

  # resources :items  do
  #   # collection do
  #   #   get :search
  #   # end
  # end

 
end
