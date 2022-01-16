Rails.application.routes.draw do
  root   'home#index'
  get    'create'  => 'users#create'
  get    'edit'    => 'home#edit'
  get    'login'   => 'sessions#new'
  get    'profile/:id'    => 'profiles#view'
  post   'signup'   => 'users#create_user'
  post   'login'   => 'sessions#create'
  get 'logout'  => 'sessions#destroy'

  resources :profiles , only: [:update]
  resources :educations , only: [:new]
  resources :experiences , only: [:new]
  resources :projects , only: [:new]
end
