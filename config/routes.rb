Rails.application.routes.draw do
  devise_for :users
  get 'books/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'libraries#index'
  
    resources :books do
      resources :books
    end
  
end
