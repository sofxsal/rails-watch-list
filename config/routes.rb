Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "list#index"
  resources :lists, only: [:index, :create, :new, :show, :destroy] do
    resources :bookmarks, only: [:show, :create, :new]
  end
end
