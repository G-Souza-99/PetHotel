Rails.application.routes.draw do
  resources :places do
    collection do
      get :my_places
    end
    resources :orders, only: %i[create show]
  end
  devise_for :users
  resources :orders, only: %i[index]


  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
