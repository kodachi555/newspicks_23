Rails.application.routes.draw do
  root 'news#index'
  resources :news do
    collection do
      get :search
    end
  end
  resources :settings, only: [] do
    collection do
      get :profile, :mail, :password, :subscriptions, :mute, :social, :query, :newsletters, :scout
    end
  end
  resources :user do
    collection do
      get :picks
    end
  end
end
