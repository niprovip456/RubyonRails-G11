Rails.application.routes.draw do
  get 'welcome/index'
  root "welcome#index"

  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
end
