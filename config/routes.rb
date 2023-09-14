Rails.application.routes.draw do
  resources :lists do
    resources :bookmarks
  end
  resources :bookmarks, only: [:destroy]
end
