Rails.application.routes.draw do

  root "pages#home"
  resources :songs
  resources :artists
  resources :photos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
