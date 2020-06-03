Rails.application.routes.draw do
	get 'home/index'
	get "/", to: "home#index", as: "root"

	get "/ios", to: "pages#ios"
	get "/android", to: "pages#android"
	
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
