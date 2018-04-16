Rails.application.routes.draw do
  devise_for :users
  get 'news' => 'news#index'
  root 'news#index'
  resources :news
  resources :products
end
