Rails.application.routes.draw do
  root 'articles#show'
  get 'articles/show'
  resources :articles
end
