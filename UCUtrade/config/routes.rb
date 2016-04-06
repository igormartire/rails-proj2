Rails.application.routes.draw do

  devise_for :users
  get '/items/show', to: 'items#show'
  
  resources :items do
  	resources :comments
  end

  resources :comments do 
  	resources :comments
  end
end
