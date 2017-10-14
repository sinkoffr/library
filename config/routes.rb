Rails.application.routes.draw do
  get 'materials/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'libraries#index'
  
    resources :materials do
      resources :materials
    end
  
end
