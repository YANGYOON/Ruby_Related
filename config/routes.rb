Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  'miniapp#index'
  get 'miniapp' => 'miniapp#index'
  get 'miniapp/new' => 'miniapp#new'
  post 'miniapp' => 'miniapp#create'
  delete 'miniapp/:id' => 'miniapp#destroy'
  patch   'miniapp/:id'  => 'miniapp#update'
  get   'miniapp/:id/edit'  => 'miniapp#edit'
  get   'users/:id'   =>  'users#show'
end
