Rails.application.routes.draw do
  devise_for :users
  root "collaterals#index"

  get "/collaterals", to: "collaterals#index"
end
