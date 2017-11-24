Rails.application.routes.draw do
  get root to: 'session#new'

  resources :user, only: [:new, :create, :show]
  resources :events, only: [:new, :create, :show, :index]
  resources :session, only: [:new, :create]
  resources :event_attendees, only: [:new, :create]
end
