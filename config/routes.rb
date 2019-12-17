Rails.application.routes.draw do
  root 'home#index'
  resources :words
  resources :choices
end
