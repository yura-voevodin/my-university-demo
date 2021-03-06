Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :admins
  get 'home/index'
  get "/", to: "home#index", as: "root"

  # Pages
  get "/about", to: "pages#about"
  get "/android", to: "pages#android"
  get "/contacts", to: "pages#contacts"
  get "/ios", to: "pages#ios"
  get "/privacy-policy", to: "pages#privacy_policy"
  get "/terms-of-service", to: "pages#terms_of_service"

  # Classrooms
  resources :classrooms, only: [:index, :show], param: :id do
    member do
      get :records
    end
  end

  # Groups
  resources :groups, only: [:index, :show], param: :id do
    member do
      get :records
    end
  end

  # Teachers
  resources :teachers, only: [:index, :show], param: :id do
    member do
      get :records
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
