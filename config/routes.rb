Rails.application.routes.draw do
  # http_verb '/path', to: 'controller#action', as: :prefix
  # Prefix -> ONLY for the path, not the verb

  # See all reported pets
  get "/pets", to: "pets#index", as: :pets
  # Add a missing pet
  get "/pets/new", to: "pets#new", as: :new_pet
  post "/pets", to: "pets#create" # as: :pets

  # See one reported pet
  get "/pets/:id", to: "pets#show", as: :pet

  # Edit a pet
  get "/pets/:id/edit", to: "pets#edit", as: :edit_pet
  patch "/pets/:id", to: "pets#update" # as: :pet

  # Remove a missing pet
  delete "/pets/:id", to: "pets#destroy" # as: :pet
end
