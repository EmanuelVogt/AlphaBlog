Rails.application.routes.draw do
  root 'articles#index'
  get 'articles/show'
  resources :articles, only: [:show, :index, :new, :create, :edit, :update]
end
