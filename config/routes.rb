Rails.application.routes.draw do
  get 'loans/index'
  get 'loans/show'
  get 'loans/edit'
  get 'loans/new'
  get 'items/index'
  get 'items/show'
  get 'items/edit'
  get 'items/new'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
