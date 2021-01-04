Rails.application.routes.draw do
  get 'user/new'
  get 'user/create'
  get 'user/show'
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events
end
