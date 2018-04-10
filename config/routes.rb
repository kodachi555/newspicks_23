Rails.application.routes.draw do
  root 'news#index'
  resources :news do
    collection do
      get 'search'
  resources :settings, only: [] do
    collection do
      get :profile, :mail, :password, :subscriptions, :mute, :social, :query, :newsletters, :scout
    end
  end
end
