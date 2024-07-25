Rails.application.routes.draw do
  root "pages#home"
  resources :teams
  resources :players
end
