Rails.application.routes.draw do
  resources :restaurants
  resources :meals do
    resources :reviews
  end
  root 'meals#index'
end
