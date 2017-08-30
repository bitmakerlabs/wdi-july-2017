Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get    'contacts'          => 'contacts#index'                     # (R)ead
  # get    'contacts/new'      => 'contacts#new', as: 'new_contact'    # (C)reate
  # get    'contacts/:id'      => 'contacts#show', as: 'contact'       # (R)ead
  # post   'contacts'          => 'contacts#create'                    # (C)reate
  # get    'contacts/:id/edit' => 'contacts#edit', as: 'edit_contact'  # (U)pdate
  # patch  'contacts/:id'      => 'contacts#update'                    # (U)pdate
  # delete 'contacts/:id'      => 'contacts#destroy'                   # (D)elete
  resources(:contacts)

  root 'contacts#index'
end
