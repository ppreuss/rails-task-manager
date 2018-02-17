Rails.application.routes.draw do

 root 'tasks#index'

#'read'

get "tasks", to: "tasks#index"

get 'tasks/new', to: 'tasks#new'

get 'tasks/:id', to: 'tasks#show', as: :task

post "tasks", to: "tasks#create"

get "tasks/:id/edit", to: "tasks#edit", as: :tasks_edit

patch "tasks/:id", to: "tasks#update"

delete "tasks/:id", to: "tasks#destroy"

end
