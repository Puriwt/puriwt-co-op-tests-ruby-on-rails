Rails.application.routes.draw do
  root "registation#index"
  resources :registation, only: [ :index, :create, :destroy, :edit, :update, :cancle ]
  post "/submit_form", to: "registation#create"
end
