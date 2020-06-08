Rails.application.routes.draw do
  devise_for :users
  root to: 'shows#index'

  get "dashboard", to: "dashboard#show"

  resources :shows, except: [:new] do
    resources :panels, only: [:create, :index, :show, :update, :destroy, :edit]
  end

  resources :panels, only: [:create, :index, :show, :update, :destroy, :edit] do
    resources :artworks, only: [:create, :update, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artworks, only: :show
  resources :writings
end
