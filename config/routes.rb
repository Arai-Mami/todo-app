Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :task_types do
    resources :tasks do
      resources :progresses, only: [:create]
    end
  end

  resources :users, only: [:edit, :show, :update]
  root "tasks#index"
end
