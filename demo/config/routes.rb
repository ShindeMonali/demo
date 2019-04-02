Rails.application.routes.draw do
  devise_for :models
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get 'user/new'
  post 'user/create'
  get 'user/index'
  get '/user/:id', to: 'user#show', as: 'user'
  get '/user/:id/edit', to: 'user#edit', as: 'Edit'
  patch '/user/:id', to: 'user#update', as: 'Update'
  put '/user/:id', to: 'user#update', as: 'updatee'
  delete '/user/:id', to: 'user#destroy', as: 'Delete'


end 