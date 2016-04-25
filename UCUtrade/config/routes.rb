Rails.application.routes.draw do

    root to: 'items#index'
    devise_for :users

    get '/item', to: 'items#show', as: 'item'
    get '/items', to: 'items#index', as: 'items'
    # resources :item

 	get 'items/new', to: 'items#new'
 	post 'items', to: "items#create"

 	get 'items/:id/edit', to: 'items#edit'
 	patch 'item.:id', to: 'items#update'
end
