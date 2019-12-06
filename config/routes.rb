Rails.application.routes.draw do

  resources :restaurants, only: [:index, :show] do
    resources :reviews, only: [:create] # because my new action is inside of the show of the restaurant
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
