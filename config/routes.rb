Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :shows, only: [:index, :show, :new, :create, :edit, :update ] do
    resources :artworks, only: [:new, :create, :destroy]
  end
  delete "shows/:id", to "shows#destroy", as: :destroy_shows
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artworks, only: :show
  resources :writings, only: [:index, :show, :new, :create, :edit, :update]
  delete "writings/:id", to "writings#destroy", as: :destroy_writings
end
