Rails.application.routes.draw do
  resources :appearances, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show, :destroy]
  resources :episodes, only: [:index, :show]
end
