Rails.application.routes.draw do
  devise_for :users
  resources :students do
    get :subjects
  end

  root 'visitors#index'
end
