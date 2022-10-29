Rails.application.routes.draw do
  devise_for :users
     root "welcomes#index"
  resources :users
  resources :groups do
    resources :settlements

  end
  
end
