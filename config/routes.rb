Rails.application.routes.draw do
  resources :users
  root 'static_pages#home'
  get 'static_pages/home'
  get "/signup", to: "users#new"

end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
