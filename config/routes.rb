Rails.application.routes.draw do

  resources :items do
  	resources :comments
  end

  resources :comments do 
  	resources :comments
  end

  root to: 'items#index'
  devise_for :users

  get '/items', to: 'items#index'
  # resources :item

  get 'items/new', to: 'items#new'
  post 'items', to: "items#create"

  get 'items/:id/edit', to: 'items#edit'
  get 'items/:id', to: 'items#show'
  patch 'items/:id', to: 'items#update'

  get 'users/:id', to: 'users#show', as: 'user'
end
