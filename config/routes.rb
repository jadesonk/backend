Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [:show]
      resources :shifts, only: %i[show create update]
    end
  end
end
