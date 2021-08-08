Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }
  
  
  #admin側
  
  
  #user側
  root to:'user/homes#top'
  resources :customers, only: [:new, :create, :index, :show, :destroy], to: 'user/customers#'
  
  
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
