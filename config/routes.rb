Rails.application.routes.draw do
  root 'news#show'
  resources :news
end
