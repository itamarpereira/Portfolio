Rails.application.routes.draw do
  root to: 'selections#en_dark'
  resources :projects, only: [:index]
  get 'en_dark', to: 'selections#en_dark'
  get 'pt_dark', to: 'selections#pt_dark'
  get 'en_light', to: 'selections#en_light'
  get 'pt_light', to: 'selections#pt_light'
end
