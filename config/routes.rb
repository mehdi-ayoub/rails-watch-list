Rails.application.routes.draw do
  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [:new, :create]
  end

  # Change the resource route for bookmarks to specify :destroy action as DELETE
  resources :bookmarks, only: [:destroy]
end
