Rails.application.routes.draw do

  root 'pages#index'
  get 'about', to: 'pages#about'

  resources :articles
  resources :users, except: [:new]

  get 'signup', to: 'users#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

end
