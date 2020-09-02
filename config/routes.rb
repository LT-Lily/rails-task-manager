Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# READ ALL 
  get "tasks", to: "tasks#index"

# CREATE
# GET and POST form
  post "tasks", to: "tasks#create"
  get "tasks/new", to: "tasks#new"
  
# READ ONE
  get "tasks/:id", to: "tasks#show", as: :task_show
# UPDATE(edit)
  #GET form
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"
end

