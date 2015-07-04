Rails.application.routes.draw do
  root 'homes#index'
  ##
  #part
  #
  # PATH /
  #
  devise_for :users
  #
  # part module
  #
  scope module: 'parts' do
    resources :top, only: [:index, :show]
  end
  ##
  #Admin
  #
  #PATH admin/
  #
  devise_for :admins
  # 
  # admin module
  #
  scope module: 'admins', path: 'admin', as: 'admin' do
    resources :top, only: [:index, :show]
  end
end	
