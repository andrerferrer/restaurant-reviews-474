Rails.application.routes.draw do
  
  # As Mr. Tweeddale asked, we can do this as well.
  # get 'restaurants/top', to: 'restaurants#top', as: :top_restaurants

  resources :restaurants do
    # means that this is a route for all restaurants
    collection do
      get :top
    end

    # means that this is a route for one restaurant
    member do
      get :chef
    end
    
    resources :reviews, only: [:create, :new]
  end
  
  resources :reviews, only: [:destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
