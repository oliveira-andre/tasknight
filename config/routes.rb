Rails.application.routes.draw do
  resources :tasks
  resources :monsters
  resources :character_attributes
  resources :characters
  resources :character_classes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
