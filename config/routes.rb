# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index] do
    scope module: :users do
      resources :reviews, only: [:index]
    end
  end
end
