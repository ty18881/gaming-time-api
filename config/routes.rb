Rails.application.routes.draw do
  resources :selectedquestions
  resources :questions
  resources :games
  resources :parents
  resources :progressreports
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
