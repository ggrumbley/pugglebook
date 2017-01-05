Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :favorite_foods, except: [:new, :edit]
      resources :foods, except: [:new, :edit]
      resources :puggles, except: [:new, :edit]
    end
  end
end
