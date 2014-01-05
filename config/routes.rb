Entity::Application.routes.draw do
  resources :registered_agents

  resources :corporations

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end