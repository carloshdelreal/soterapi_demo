Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :rain_data, only: %i[create]
      get 'rain_data/:rainstation_id', to: 'rain_data#index'
    end
  end
  namespace :api do
    namespace :v1 do
      resources :rain_station, only: %i[create show index]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
