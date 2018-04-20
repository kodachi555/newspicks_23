Rails.application.routes.draw do
  root 'news#index'
  devise_for :users
  resources :products
  resources :news do
    collection do
      get 'search'
    end
  end
  resources :settings, only: [] do
    collection do
      get :profile, :mail, :password, :subscriptions, :mute, :social, :query, :newsletters, :scout
    end
  end
  resources :categories, only: :show
end
