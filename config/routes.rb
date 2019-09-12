Rails.application.routes.draw do
  root 'home#index'
  get 'questions/index'
end
