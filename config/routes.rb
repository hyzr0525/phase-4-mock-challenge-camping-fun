Rails.application.routes.draw do
  
  resources :signups, only: [:create, :index]
  resources :campers, only: [:index, :show, :create]
  resources :activities, only: [:index, :show, :destroy]
end
