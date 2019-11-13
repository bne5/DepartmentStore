Rails.application.routes.draw do
  root "departments#index"  
  # sets index from departments_controller as the root route

  get '/departments', to: 'departments#index', as: 'all_the_departments'
  get '/department/:id', to: 'departments#show', as: 'the_one_department'
  delete '/department/:id', to: 'departments#destroy', as: 'destroy_the_department'

  resources :departments do 
    resources :items
  end
  # creates seven different routes in your application, all mapping to the departments_controller:
end
