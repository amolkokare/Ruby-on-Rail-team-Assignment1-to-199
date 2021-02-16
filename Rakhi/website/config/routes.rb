Rails.application.routes.draw do

  get 'startup/index'

    resources :startup, :signup, :contact, :gallery
    resource :signup
      

root :to => 'signup#index'

  #devise_for :users
  #resources :users
  # root to: "users#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
