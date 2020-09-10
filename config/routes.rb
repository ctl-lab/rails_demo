Rails.application.routes.draw do
  root controller: :articles, action: :index
  resources :articles, only: [:index, :show, :new, :create, :edit, :update]
end
