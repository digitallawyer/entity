Entity::Application.routes.draw do
  get "guides/corporation"
  resources :incorporators

  resources :registered_agents

  resources :corporations

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end