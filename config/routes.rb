Rails.application.routes.draw do
  get 'homes/index'
  post 'homes/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'homes#index'

  resources :homes do

    member do
      get 'menu'
      end
  
    end
  


end
