Rails.application.routes.draw do
  resources :matches
  get 'root/index'
  resources :profile_matcher, only: [:index]
  resources :profiles
  devise_for :users, :controllers => {registrations: 'registrations'}
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "root#index"
end
