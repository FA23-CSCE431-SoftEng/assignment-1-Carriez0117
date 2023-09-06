Rails.application.routes.draw do
  
  root "main#index"
  match 'create', to: "main#create", via: :get
  match 'read', to: "main#read", via: :get
  match 'update', to: "main#update", via: :get
  match 'delete', to: "main#delete", via: :get

  get 'main/index'

  resources :books

  get 'books/create'
  get 'books/read'
  get 'books/update'
  get 'books/delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
