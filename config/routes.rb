# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home/index'
  devise_for :users, skip: %i[confirmations passwords]
  root 'home#index'
  get 'up' => 'rails/health#show', as: :rails_health_check
end
