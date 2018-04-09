Rails.application.routes.draw do
  root 'news#index'
  resources :news do
    collection do
      get 'search'
    end
  end
end
