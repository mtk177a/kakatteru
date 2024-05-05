Rails.application.routes.draw do
  get 'hearts/new'
  get 'hearts/create'
  get 'answers/new'
  get 'answers/create'
  get 'questions/new'
  get 'questions/create'
  root "users#index"
  resources :users

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
end
