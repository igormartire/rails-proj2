Rails.application.routes.draw do

    root to: 'items#index'
    devise_for :users

    get '/item', to: 'items#show', as: 'item'
    get '/items', to: 'items#index', as: 'items'
    resources :item
end
