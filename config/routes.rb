Rails.application.routes.draw do
  root "registation#index"
  resources :registation, only: [:index, :create, :destroy, :edit, :update]
end

