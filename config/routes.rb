Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "homes#top"
resources :users, only: [:edit, :show, :update]
resources :books, only: [:new, :edit, :create, :index, :update]
get "/homes/about" => "homes#about", as: "about"
end
