Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users
  resources :hairstyles
  resources :stylists
  resources :salons, only: [:index]
  resources :appointments

  
  post "/makeappointment", to: "appointments#make_appointment", as: "make_appointment"

  


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
