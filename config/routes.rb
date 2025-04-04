Rails.application.routes.draw do
  root to: "pages#home"
  # As a user, I can see all of my cafes
  # '/api/v1/cafes'
  # '/api/v2/cafes'
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :cafes, only: [ :index, :create ]
    end
  end
  # As a user, I can search through all of my cafes
  # As a user, I can add a cafe
end
