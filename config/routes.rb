Rails.application.routes.draw do
  get 'news' => 'news#index'
  root 'news#index'
  resources :news
end
