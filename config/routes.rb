Rails.application.routes.draw do
  resources :tasks
  root to: 'dashboards#main'
end
