Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # READ - list all restaurants
  get 'tasks', to: 'tasks#index'

  # CREATE
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'

  # READ - show a particular restaurant
  get 'tasks/:id', to: 'tasks#show', as: :task

  # UPDATE - update a particular restaurant
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # DELETE - delete a particular restaurant
  delete 'tasks/:id', to: 'tasks#destroy'
  # resources :restaurants
end
