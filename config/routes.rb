Rails.application.routes.draw do

  resources :reviews
  resources:books
  root "books#index"
 
end
