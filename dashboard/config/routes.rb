Rails.application.routes.draw do
  get '/dashboard/index'
  get '/dashboard/index2'
  get '/dashboard/index3'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "dashboard#index"

end
