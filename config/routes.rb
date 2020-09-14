Rails.application.routes.draw do
  devise_for :users
  root controller: :articles, action: :index
  resources :articles, only: [:index, :show, :new, :create, :edit, :update]
end
