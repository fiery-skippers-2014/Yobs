YOBS::Application.routes.draw do

  root :to => 'categories#index'

  resources :categories, :only => [:index, :show]

  resources :users, :only => [:create]

  delete 'session' => 'sessions#destroy'
  resources :sessions, :only => [:new, :create, :destroy]

  delete 'interests' => 'interests#destroy'
  put 'interest' => 'interests#update'
  resources :interests, :only => [:create, :destroy, :update]

  root :to => 'categories#index'

  resources :agencies, :only => [:show] do
    resources :jobs
  end
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"

end
