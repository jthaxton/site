Rails.application.routes.draw do
  get 'articles/index'
  root 'articles#new'
  get 'articles/new'
  get 'articles/show'
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
