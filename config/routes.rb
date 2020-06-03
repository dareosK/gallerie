Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :shows, only: [:show, :index, :create, :update, :destroy] do
    resources :panels, only: [:create, :index, :show, :update, :destroy] do
      resources :artworks, only: [:create, :update, :destroy]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artworks, only: :show
  resources :writings
end
