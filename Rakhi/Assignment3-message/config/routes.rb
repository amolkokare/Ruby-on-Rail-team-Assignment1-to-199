Rails.application.routes.draw do
  get 'home/Index'
  resources :messages

  mount ActionCable.server => "/cable"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
