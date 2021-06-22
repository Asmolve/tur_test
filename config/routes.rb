Rails.application.routes.draw do
  root 'home#index'
  get 'admin/adminpage'
end
