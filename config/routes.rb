# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'main#index'

  get 'password', to: 'passwords#edit', as: :edit_password
  patch 'password', to: 'passwords#update'

  get 'sign_up', to:'registration#new'
  post 'sign_up', to: 'registration#create'

  get 'sign_in', to:'sessions#new'
  post 'sign_in', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'

  get "password/reset", to: 'password_resets#new'
  post "password/reset", to: 'password_resets#new'

  get 'about', to: 'about#index'
  # get 'about', to: 'about#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
