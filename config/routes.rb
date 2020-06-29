Rails.application.routes.draw do
  resources :ingredients, only: [:index, :show]
  resources :recipes, only: [:index, :show, :new]
  resources :users, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
