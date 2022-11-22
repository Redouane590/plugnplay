Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :boats do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:destroy, :show]


  patch "/bookings/:id/accepted", to: "bookings#accepted", as: :accepted
  patch "/bookings/:id/declined", to: "bookings#declined", as: :declined


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
