YOBS::Application.routes.draw do

  root :to => 'categories#index'

  resources :categories, :only => [:index, :show]

  resources :users, :only => [:create]

  delete 'session' => 'sessions#destroy'
  resources :sessions, :only => [:new, :create, :destroy]

  delete 'interests' => 'interests#destroy'
  resources :interests, :only => [:create, :destroy]
  root :to => 'categories#index'

  resources :agencies, :only => [:show] do
    resources :jobs
  end

######### added the code below for omniauth #####

match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
match 'auth/failure', to: redirect('/'), via: [:get, :post]
match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

#################################################

  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"

end
