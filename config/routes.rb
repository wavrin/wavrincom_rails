Wavrincom::Application.routes.draw do
  resources :users

  resources :articles
  resource :session
  
  root 'articles#index'
  get "loginhere" => "sessions#new"

  
end
