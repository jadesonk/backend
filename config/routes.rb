Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :jobs, only: %i[index show]
      resources :users, only: [:index, :show]

      resources :shifts, only: %i[show create update]
    end
  end
end
