YOBS::Application.routes.draw do

  resources :categories, :only => [:index, :show]
  
  resources :agencies do
    resources :jobs
  end


  resources :users
  delete 'session' => 'sessions#destroy'
  resources :sessions, :only => [:new, :create, :destroy]
  resources :interests, :only => [:create]
  root :to => 'categories#index'

  # get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"

  # match '/signin',  to: 'sessions#new',         via: 'get'
  # match '/signout', to: 'sessions#destroy',     via: 'delete'


end
