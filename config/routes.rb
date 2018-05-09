Rails.application.routes.draw do
  resources :roles
  resources :users
  devise_for :users, controllers: {
    # For Recaptcha verification
    registrations: 'registrations',
    passwords:     'passwords'
  },
  path: '', path_names: {
    confirmation:  'verification',
    unlock:        'unlock',
    sign_in:       'login',
    sign_out:      'logout',
    sign_up:       'sign_up'
  }
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
