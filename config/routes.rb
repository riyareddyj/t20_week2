Rails.application.routes.draw do
  root "teams#home"
  resources :teams
  resources :players
end
