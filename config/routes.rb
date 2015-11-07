Rails.application.routes.draw do
  get 'landing/home'

  root to: 'landing#home'
end
