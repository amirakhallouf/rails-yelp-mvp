Rails.application.routes.draw do
  # get 'reviews/index'

  # get 'reviews/show'

  # get 'reviews/new'

  # get 'reviews/create'

  # get 'reviews/edit'

  # get 'reviews/update'

  # get 'reviews/destroy'

  # get 'restaurants/index'

  # get 'restaurants/show'

  # get 'restaurants/new'

  # get 'restaurants/create'

  # get 'restaurants/edit'

  # get 'restaurants/update'

  # get 'restaurants/destroy'
  resources :restaurants do
  resources :reviews, only: [ :index, :new, :create ]
  end
  resources :reviews, only: [ :show, :edit, :update, :destroy ]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
