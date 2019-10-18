Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :appearance, only: [:new, :show]

  post '/appearance', to: "appearance#create", as: "appearances"
end
