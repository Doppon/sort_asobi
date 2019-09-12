Rails.application.routes.draw do
  root 'home#index'
  get 'easy/index'
  resources :words
  resources :choices
end
