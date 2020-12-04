Rails.application.routes.draw do
  resources :events
  get 'dashboard', to: 'dashboard#show'
  resources :articles
  resources :accounts
  devise_for :users, controllers: { registrations: "registrations" }
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
