Rails.application.routes.draw do

  devise_for :users
  get '/items/show', to: 'items#show'
end
