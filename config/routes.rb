Rails.application.routes.draw do
  resources :couples
  resources :guesses
  resources :episodes
  resources :seasons
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
