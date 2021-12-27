Rails.application.routes.draw do
  root 'articles#index'
  get 'articles/show'
  resources :articles
end
