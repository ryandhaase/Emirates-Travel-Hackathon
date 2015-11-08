Rails.application.routes.draw do
  get 'landing/home'

  resources :searches, only: [:create]

  root to: 'landing#home'
end
