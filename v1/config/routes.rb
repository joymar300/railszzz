Rails.application.routes.draw do
  namespace :areas do
    get 'cursos/index'
  end
  get 'areas/index'
  devise_for :users

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  root 'home#index'
  resources :cursos
  resources :areas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
