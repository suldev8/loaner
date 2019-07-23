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

  get 'loans/out_requests', to: 'loans#out_requests', as: 'out_requests'
  get 'loans/in_requests', to: 'loans#in_requests', as: 'in_requests'
  devise_for :users

  resources :users do 
    resources :items
    resources :loans
  end

  get "/change", to: "loans#changest"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
