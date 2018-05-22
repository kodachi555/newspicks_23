Rails.application.routes.draw do
  get 'users/show'

  get 'picks/create'

  root 'news#index'
  devise_for :users
  resources :products
  resources :news do
    resources :picks, only: [:create] do
      resources :likes, only: [:create, :destroy]
    end
    collection do
      get 'search'
    end
  end
  resources :settings, only: [] do
    collection do
      get :profile, :mail, :password, :subscriptions, :mute, :social, :query, :newsletters, :scout
    end
  end
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
  resources :categories, only: :show
end
