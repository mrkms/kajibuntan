Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :works
resources :invites
resources :homes
post "works/index", to: "works#create"
end
