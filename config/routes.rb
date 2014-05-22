Rails.application.routes.draw do

  devise_for :users

  authenticated do
    root :to => 'wines#index', as: :authenticated
  end

  root 'wines#welcome'

  resources :wines do
    resources :reviews
    member do
      post :upcount
      post :downcount
      get :search
    end
  end
  resources :vineyards




end
