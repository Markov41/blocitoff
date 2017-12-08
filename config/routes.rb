Rails.application.routes.draw do

  get 'items/create'

  get 'users/new'

  get 'users/show'

  get 'users/create'

  get 'users/index'

  devise_for :users

  get  'welcome/index'

  get  'welcome/about'

  root 'welcome#index'


  resources :users do
    resources :items, only: [:create]
  end

end
