Rails.application.routes.draw do
	# Authorization
  mount RailsAdmin::Engine => '/dashboard', as: 'rails_admin'
  
  # Authentication
  devise_for :users
  
  # Application
  root to: 'home#index'
  resource :subscription, only: [:create]
  resource :newsletter, only: [:create, :destroy]
  resource :contact, only: [:create]
end



