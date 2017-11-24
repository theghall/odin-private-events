Rails.application.routes.draw do
  get root to: 'sessions#new'

  resources :users, only: [:new, :create, :show]
  resources :events, only: [:new, :create, :show, :index]
  resources :sessions, only: [:new, :create]
  resources :event_attendees, only: [:new, :create]
end
