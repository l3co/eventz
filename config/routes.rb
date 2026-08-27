Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get "events" => "events#index"
  get "events/:id" => "events#show"
end
