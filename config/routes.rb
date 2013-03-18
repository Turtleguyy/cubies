Cubies::Application.routes.draw do

  root :to => 'pages#index'
  resources :tasks, :users, :clients, :projects, :sessions,
    except: [:new, :edit]

  post 'register',    to: 'users#create',         as: 'register'
  post 'login',       to: 'sessions#create',      as: 'login'
  get  'logout',      to: 'sessions#destroy',     as: 'logout'
  get  'check_login', to: 'sessions#check_login', as: 'check_login'

end
