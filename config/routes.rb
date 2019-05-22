Rails.application.routes.draw do
  root 'restaurants#index'
  resources :restaurants, only: %w[index show new create] do
    resources :reviews, only: %w[new create]
  end
end
