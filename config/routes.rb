Rails.application.routes.draw do
  get 'shows/index'
  get 'shows/show'
  get 'shows/new'
  get 'shows/create'
  get 'shows/edit'
  get 'shows/update'
  get 'shows/destroy'
  devise_for :users
  root to: 'pages#home'
  resources :shows do
    resources :artworks, only: [:new, :create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artworks, only: :show
  resources :writings

end
