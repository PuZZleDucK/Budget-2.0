Rails.application.routes.draw do
  resources :users
  resources :ideas, only: [:create, :destroy]
  root 'static_pages#home'
  get 'static_pages/home'
  get "/signup", to: "users#new"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
