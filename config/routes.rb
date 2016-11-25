Rails.application.routes.draw do
  get 'diaries/new'

  get 'diaries/create'

  get 'diaries/update'

  get 'diaries/edit'

  get 'diaries/destroy'

  get 'diaries/index'

  get 'diaries/show'

  get 'entries/new'

  get 'entries/create'

  get 'entries/update'

  get 'entries/edit'

  get 'entries/destroy'

  get 'entries/index'

  get 'entries/show'

  devise_for :users
  root 'main#index'
  get 'main/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
