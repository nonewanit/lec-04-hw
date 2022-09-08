Rails.application.routes.draw do
  root to: "main#home"
  get 'main/test'
  get 'main/test2'
  post 'main/test'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  
end
