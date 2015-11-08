Rails.application.routes.draw do

  resources :landings, only: [:create, :show]

  get 'landings/:id/booking', to: 'landings#booking'

  root to: 'landings#home'
end
