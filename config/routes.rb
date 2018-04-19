Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'site#home'

  resources :games, only: [:new, :create, :show, :destroy] do
    resources :players, only: [:new, :create, :update]
    resources :rounds, only: [:create, :show, :update]
  end
end
