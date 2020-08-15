Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/" => "tasks#index"
  get "tasks" => "tasks#index"
  get "tasks/new" => "tasks#new"
  post "tasks" => "tasks#create"
  get "tasks/:id" => "tasks#show"
end
