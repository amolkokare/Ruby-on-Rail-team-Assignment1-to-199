Rails.application.routes.draw do
   devise_for :users

    #GET    /users/sign_up
   root "posts#index"
   
   #root "replies#form"
   


   #root "users/sign_up#index"
   #root "users#sign_up"
   #root to: "users#index"
   #root "users#index"
   




   #users/sign_up

   # Nested resource routes give us access to replies from each post
    resources :posts do
  	resources :replies
  end
end
