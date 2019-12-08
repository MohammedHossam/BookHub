Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match '/', to: 'books#index', via: 'get'

  resources :users 
  resources :books
    match '/user_books/:id', to: 'books#user_books', via: 'get'
  
end
