Rails.application.routes.draw do
  devise_for :users
  resources :students do
    get :subjects
  end

  resources :teachers do
    get :subjects
  end

  root 'visitors#index'

  get '/report/subjects', to: 'reports#subjects'
  get '/report/student_payments', to: 'reports#student_payments'
end
