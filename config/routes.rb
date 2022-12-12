# frozen_string_literal: true

Rails.application.routes.draw do
  resource :modal, controller: 'modal', only: %i[new create]
  resource :flash_message, controller: 'flash_message', only: %i[create]
  root to: 'home#index'
end
