Rails.application.routes.draw do
  root 'home#index'
  # get 'loans/index'
  # get 'loans/show'
  # get 'loans/edit'
  # get 'loans/new'
  # get 'items/index'
  # get 'items/show'
  # get 'items/edit'
  # get 'items/new'
  devise_for :users

  resources :users do 
    resources :items
    resources :loans
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
