Rails.application.routes.draw do
  resources :revenues
 
root to: "revenues#index"
end
