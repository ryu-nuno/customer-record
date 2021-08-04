Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }
  
  
  #admin側
  
  
  #user側
  root to:'user/homes#top'
  
  
  
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
