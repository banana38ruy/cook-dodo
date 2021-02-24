Rails.application.routes.draw do
  root "recipes#index"
  devise_for :users
  resources :users, only: :show
    resources :recipes
       resources :materials
        resources :cooks

end
