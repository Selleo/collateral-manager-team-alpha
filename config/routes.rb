Rails.application.routes.draw do
  devise_for :users
  root "collaterals#index"

  resources :collaterals do
    resources :tags, controller: :collaterals_tags
  end

  resources :tags do
    resources :collaterals, controller: :collaterals_tags
  end

  get 'search', to: 'searches#new'
  post 'search', to: 'searches#create'

end
