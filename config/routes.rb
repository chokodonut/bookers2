Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "homes#top"
resources :users, only: [:edit, :show, :update, :index,]
resources :books, only: [:edit, :create, :index, :update, :show, :destroy]
get "/homes/about" => "homes#about", as: "about"
# post "/users/:id" => "books#show"
end
