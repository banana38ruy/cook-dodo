Rails.application.routes.draw do
  devise_for :users
  root to: "recipes#index"
  
  resources :users, only: :show do
    resources :recipes, only: [:incex, :new, :create]
  end 
end
