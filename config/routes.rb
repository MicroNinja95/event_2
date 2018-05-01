Rails.application.routes.draw do
  resources :users
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'home/index'
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
