Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles
  resources :sessions, only: [:new, :create, :destroy]

  get 'login' => 'sessions#new'
  
  root to: 'articles#index'
end
