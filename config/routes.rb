# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :tasks
  resources :monsters
  resources :character_attributes
  resources :characters
  resources :character_classes

  root to: 'home#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
