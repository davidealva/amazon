Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations" }
  get 'home/index'
  root 'home#index'

  get 'dashboard', to: 'dashboard#index'
  namespace :dashboard do
    resources :articles, :events
  end

  resources :accounts
  # resources :articles
  # resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
