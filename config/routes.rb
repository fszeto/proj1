Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch '/capture', to: 'pokemons#capture'
  patch '/damage', to: 'pokemons#damage'
  get '/pokemons/new', to: 'pokemons#new'
  put 'create' => 'pokemons#create', as: 'create'
end
