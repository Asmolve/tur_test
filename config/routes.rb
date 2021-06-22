Rails.application.routes.draw do
  resources :campsites
  resources :cities
  resources :regions
  resources :countries
  root 'home#index'
  get 'admin/adminpage'
end
