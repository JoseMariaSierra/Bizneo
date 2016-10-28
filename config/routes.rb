Rails.application.routes.draw do
  root to: "pages#index"

  devise_for :users, controllers: {
  	registrations: "users/registrations"
  }
	  resources :users, only: :show  
	  resources :pages, only: :index, path:"/"
end
