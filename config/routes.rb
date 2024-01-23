Rails.application.routes.draw do
  root to: "products#index"

  resources :products, only: [:index, :show]

  resources :categories, only: [:show]
end
