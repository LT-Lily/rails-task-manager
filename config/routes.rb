Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# READ ALL 
  get "tasks", to: "tasks#index"

# CREATE
# GET and POST form
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create", as: :create_task
  
# READ ONE
  get "tasks/:id", to: "tasks#show", as: :task # in flashcards it is as: :restaurant. CONVENTION?
# UPDATE(edit)
  # GET form
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update", as: :update_task

# DELETE
  delete "tasks/:id", to: "tasks#destroy"
end

