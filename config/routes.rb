Entity::Application.routes.draw do
  resources :corporations

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end