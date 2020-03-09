Rails.application.routes.draw do
  devise_for :admins
  resources :admins, only: [:edit, :update, :show]
  devise_for :users
  # get 'messages/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "messages#index"
  resources :users, only: [:edit, :update, :show]
end
