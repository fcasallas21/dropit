Rails.application.routes.draw do


  devise_for :users
  resources :posts

  get "profile", to:"users#edit"
  root to: "dashboard#index"

end
