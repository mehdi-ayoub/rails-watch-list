Rails.application.routes.draw do
  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [:new, :create]
  end

  resources :movies, only: [:index]
  # Change the resource route for bookmarks to specify :destroy action as DELETE
  resources :bookmarks, only: [:destroy]
end
