Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :jobs, only: %i[index show]
      resources :users, only: [:index, :show]

      resources :shifts, only: %i[show create update]


      # get '/shifts/:id', to: 'shifts#show', as: 'shift'
      # post '/shifts/clock_in', to: 'shifts#create', as: 'clock_in'
      # post '/shifts/:id/clock_out', to: 'shifts#clock_out', as: 'clock_out'
    end
  end
end
