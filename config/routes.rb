Rails.application.routes.draw do

  get root to: 'session#new'

  resources :user, only: [:new, :create, :show]
  resources :session, only: [:new, :create]
end
