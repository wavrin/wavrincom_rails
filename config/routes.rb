Wavrincom::Application.routes.draw do
  resources :users

  resources :articles
  root 'articles#index'
  get "loginhere" => "sessions#new"
  
  resource :session
  
end
