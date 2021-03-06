Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  # Nested resource routes give us access to replies from each post


  
  resources :posts do
  	resources :replies
  end
end
