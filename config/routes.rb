Rails.application.routes.draw do
  resources :places do
    resources :orders, only: %i[create show]
  end
  # resources :orders, only: %i[show]
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
