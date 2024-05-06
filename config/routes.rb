Rails.application.routes.draw do
  root "posts#index"
  resources :users

  resources :posts, only: [:new, :create, :index]
  resources :nazokakes, only: [:index]
  resources :questions, only: [:new, :create]
  resources :answers, only: [:new, :create]
  resources :hearts, only: [:new, :create]

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
end
