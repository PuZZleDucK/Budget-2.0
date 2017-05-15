Rails.application.routes.draw do
  resources :users
  resources :ideas, only: [:create, :destroy]
  root 'static_pages#home'
  get 'static_pages/home'
  get "/signup", to: "users#new"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :ideas do
    member do
      get :supporters
    end
  end
  resources :users do
    member do
      get :supporting
    end
  end

  resources :supports, only: [:create, :destroy]

end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
