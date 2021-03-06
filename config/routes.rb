Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :disciplines
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
