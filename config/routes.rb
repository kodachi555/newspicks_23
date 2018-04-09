Rails.application.routes.draw do
  get 'news' => 'news#index'
  root 'news#index'
  resources :news do
    collection do
      get 'search'
    end
  end
end
