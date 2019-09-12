Rails.application.routes.draw do
  get 'questions/index'
  root 'home#index'
end
