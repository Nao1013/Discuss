Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :posts, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :user, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
