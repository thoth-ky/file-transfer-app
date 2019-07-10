Rails.application.routes.draw do
  root to: 'index#index'
  devise_for :users
  
  resources :documents, only: %i[index show create new]
end
