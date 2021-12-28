Rails.application.routes.draw do
  root 'pages#home'
  get 'articles/show'
  resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]
end
