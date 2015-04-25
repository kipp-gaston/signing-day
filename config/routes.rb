Rails.application.routes.draw do
  root to: 'events#current'
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  post '/donate/:year', to: 'events#donate', constraints: { year: /\d{4}/ }, as: 'donate'
  get '/:year', to: 'events#show', constraints: { year: /\d{4}/ }, as: 'event'
  # get '/:year', to: 'events#show', as: 'event'

  match '(*path)',  to: 'application#render_404', via: :all
end
