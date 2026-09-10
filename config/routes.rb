Rails.application.routes.draw do

  root "events#index"
  resources :events do
    resources :registrations
  end

  resource :session, only: [:new, :create, :destroy]

  resources :users
  get "signin", to: "sessions#new"
  get "signup", to: "users#new"
  delete "signout", to: "sessions#destroy"

end
