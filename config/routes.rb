Rails.application.routes.draw do
  devise_for :users
  root "collaterals#index"

  #get "/collaterals", to: "collaterals#index"
  #get "/collaterals/new", to: "collaterals#new"

  resources :collaterals do
    resources :tags, controller: :collaterals_tags
  end

  resources :tags


end
