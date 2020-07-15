Rails.application.routes.draw do
  devise_for :users
  resources :todo_categories
  resources :categories
  resources :todos do
  	resources:comments
  end
  root"todos#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
