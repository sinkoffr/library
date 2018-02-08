Rails.application.routes.draw do
  devise_for :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'libraries#index'
  
  get 'books/google_api_search/:search', to: "books#google_api_search"
  resources :books do
    
  end
    
  
end
