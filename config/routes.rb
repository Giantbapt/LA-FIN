Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   get 'pourquoi', to: 'pages#pourquoi', as: :pourquoi
   get 'hommage', to: 'pages#hommage', as: :hommage
   get 'installationdanslaville', to: 'pages#installationdanslaville', as: :installationdanslaville
   get 'lepouvoirdesclones', to: 'pages#lepouvoirdesclones', as: :lepouvoirdesclones
   get 'seduction', to: 'pages#seduction', as: :seduction
   get 'remerciements', to: 'pages#remerciements', as: :remerciements
end

Rails.application.routes.draw do
  resources :portraits
end