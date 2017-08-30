Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get  '/contacts'     => 'contacts#index'
  get  '/contacts/new' => 'contacts#new', as: 'new_contact'
  get  '/contacts/:id' => 'contacts#show', as: 'contact'
  post '/contacts'

end
