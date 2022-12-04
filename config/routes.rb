# frozen_string_literal: true

Rails.application.routes.draw do
  resource :modal, controller: 'modal', only: %i[new create]
  root to: 'home#index'
end
