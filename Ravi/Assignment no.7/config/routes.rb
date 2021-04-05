Rails.application.routes.draw do


  devise_for :users
  #root to: "home#index"
  root "meals#index"

  resources :meals, only: [:index, :create, :destroy]
end
