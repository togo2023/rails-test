Rails.application.routes.draw do
  get "/", to: "posts#index"

  resources :posts, only: [:new, :create, :show, :edit, :update, :destroy]
end
