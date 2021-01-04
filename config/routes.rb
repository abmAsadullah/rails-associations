Rails.application.routes.draw do
  get 'user/new'
  get 'user/create'
  get 'user/show'
  devise_for :users
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
