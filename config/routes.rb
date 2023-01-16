Rails.application.routes.draw do

  resources :clients, only: [:index, :create, :show, :update, :destroy]
  resources :trainers, only: [:index, :create, :show, :update, :destroy]
  resources :exercises, only: [:index, :create, :show, :update, :destroy]
  # resources :schedules, only: [:create, :show]
  resources :workouts, only: [:index, :create, :show]
  resources :schedules, only: [:index, :create, :show, :update, :destroy]
  resources :testimonials, only: [:index, :create, :show, :update, :destroy]
 

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  post "/signup", to: "sessions#create"
  get "/me", to: "users#show"
end
