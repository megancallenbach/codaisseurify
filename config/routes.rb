
Rails.application.routes.draw do

  root "pages#home"

  resources :songs, only: [:index]
  resources :artists do
    resources :songs, except: [:index]
  end
  resources :photos

  namespace :api do
    resources :songs
  end

end
