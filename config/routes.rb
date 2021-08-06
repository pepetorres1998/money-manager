# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', registration: 'sign_up', sign_up: '' }
  root 'static_pages#home'

  resources :wallets
  resources :transactions
end
