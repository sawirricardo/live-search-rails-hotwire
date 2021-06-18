Rails.application.routes.draw do
  root 'articles#index'
  post 'search', to: 'articles#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
