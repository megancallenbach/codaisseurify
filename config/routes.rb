
Rails.application.routes.draw do

  root "pages#home"

  resources :songs, only: [:index]
  resources :artists do
    resources :songs, except: [:index]
  end
  resources :photos

  namespace :api do
    resources :artists do
      resources :songs do
        collection do
          delete "remove_multiple"
        end
      end
    end
  end

end
