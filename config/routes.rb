Rails.application.routes.draw do
  root to: "lists#index"
  resources :lists do
    resources :bookmarks
  end
  resources :lists, only: [:destroy]
  resources :bookmarks, only: [:destroy]
end
