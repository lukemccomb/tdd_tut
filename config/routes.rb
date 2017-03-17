Rails.application.routes.draw do
  root to: "todos#index"

  resources :todos, only: [:index, :new, :create]
end
