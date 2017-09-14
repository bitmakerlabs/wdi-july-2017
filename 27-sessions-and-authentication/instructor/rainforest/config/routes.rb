Rails.application.routes.draw do

  resource :users, only: %i(create new)
  resource :sessions, only: %i(create new destroy)

  root 'products#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
