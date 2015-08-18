Rails.application.routes.draw do
  devise_for :users
  resources :students do
    get :subjects
  end

  resources :teachers
  root 'visitors#index'

  get '/report/subjects', to: 'reports#subjects'
end
