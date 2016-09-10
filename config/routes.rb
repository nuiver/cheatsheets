Rails.application.routes.draw do
  root "tags#index"
  devise_for :users
  resources :sheets do
    resources :tags
  end
  resources :profiles

  resources :sheets_tags

  get "sheets/:id" => "sheets#show"
  get "sheets/new" => 'sheets#new', :as => :new
end
