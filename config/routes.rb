Rails.application.routes.draw do
  get 'diaries/new'
  post 'diaries/create'
  post 'diaries/update'
  get 'diaries/edit'
  post 'diaries/destroy'
  get 'diaries/index'
  get 'diaries/show'

  get 'entries/new'
  post 'entries/create'
  post 'entries/update'
  get 'entries/edit'
  post 'entries/destroy'
  get 'entries/index'
  get 'entries/show'

  devise_for :users
  root 'main#index'
  get 'main/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
