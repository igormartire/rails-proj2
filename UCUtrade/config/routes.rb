Rails.application.routes.draw do

  resources :items do
  	resources :comments
  end

  resources :comments do 
  	resources :comments
  end

  root to: 'items#index'
  devise_for :users

end
