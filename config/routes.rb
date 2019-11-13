Rails.application.routes.draw do
  root "departments#index"  
  # sets index from departments_controller as the root route

  resources :departments
  # creates seven different routes in your application, all mapping to the departments_controller:
end
