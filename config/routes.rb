Rails.application.routes.draw do
  resources :artists, only: [:index, :show] do
    resources :songs, only: [:index, :show, :new, :edit]
  end
  resources :songs, only: [:index, :show, :new, :create, :edit, :update]

  root 'songs#index'
end
