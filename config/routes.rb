Rails.application.routes.draw do

  resources :landings, only: [:create, :show]

  root to: 'landings#home'
end
