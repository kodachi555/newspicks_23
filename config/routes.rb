Rails.application.routes.draw do
  get 'news' => 'news#index'
  root 'news#index'
  resources :news

  # idを含まない単数形のresource
  resource :settings, only: [:index] do
    collection do
      get :profile ,:mail,:password,:subscriptionns,:mute,:social,:query,:newsletters,:scout
    end
  end
end
