Rails.application.routes.draw do
  root "tags#index"
  devise_for :users
  resources :sheets
  resources :tags
  resources :profiles

get "sheets/:id" => "sheets#show"
end
