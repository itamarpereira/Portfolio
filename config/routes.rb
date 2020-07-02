Rails.application.routes.draw do
  root to: 'projects#index'
  resources :selections, only: [:show]
    resources :projects, only: [:index]
  get '/port', to: 'projects#port'
end
