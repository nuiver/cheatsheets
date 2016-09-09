Rails.application.routes.draw do
  devise_for :users
  resources :sheets
  resources :tags
  resources :profiles
end
