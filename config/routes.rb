Rails.application.routes.draw do
  get 'news' => 'news#index'
  root 'news#index'
  resources :news

  resources :settings, only: [] do
    collection do
      get :profile ,:mail ,:password ,:subscriptions ,:mute ,:social ,:query ,:newsletters ,:scout
    end
  end
end
