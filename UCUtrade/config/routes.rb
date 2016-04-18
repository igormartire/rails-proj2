Rails.application.routes.draw do

  devise_for :users
  get '/items/show', to: 'items#show'
  
  resources :items do
  	resources :comments
  end

  resources :comments do 
  	resources :comments
  end
  root to: 'items#index'
  devise_for :users

  get '/item', to: 'items#show', as: 'item'
  get '/items', to: 'items#index', as: 'items'
  # resources :item
end
