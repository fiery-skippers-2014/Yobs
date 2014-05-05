YOBS::Application.routes.draw do

  root :to => 'categories#index'

  resources :categories, :only => [:index, :show]

  resources :users, :only => [:create]

  delete 'session' => 'sessions#destroy'
  resources :sessions, :only => [:new, :create, :destroy]

  resources :interests, :only => [:create]
  root :to => 'categories#index'

  resources :agencies, :only => [:show] do
    resources :jobs
  end


  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"

end
