Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :artists do
    member do
      delete :purge_avatar
    end
  end
  
  resources :albums
  resources :tracks
end
