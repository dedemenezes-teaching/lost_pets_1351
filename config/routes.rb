Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'pets', to: 'pets#index', as: 'pets'

  # RECEIVE THE FORM
  post '/pets', to: 'pets#create'

  # DISPLAY THE FORM
  get '/pets/new', to: 'pets#new', as: 'new_pet'


  get '/pets/:id', to: 'pets#show', as: 'pet'
  # EDIT RECEIVE THE FORM
  patch '/pets/:id', to: 'pets#update'
  delete '/pets/:id', to: 'pets#destroy'

  # EDIT DISPLAY THE FORM
  get '/pets/:id/edit', to: 'pets#edit', as: 'edit_pet'

end
