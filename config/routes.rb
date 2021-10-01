Rails.application.routes.draw do
  resources :appointments, only: [:new, :create]
  resources :doctors, only: [:show]
  resources :patients, only: [:show]
end
