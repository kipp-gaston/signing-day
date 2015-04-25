Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
