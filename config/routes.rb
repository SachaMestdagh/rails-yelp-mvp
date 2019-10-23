Rails.application.routes.draw do

get 'restaurants', to: "restaurants#index"

  resources :restaurants do
    resources :reviews, only: [:new, :create, :edit]
    collection do
      get :top
    end
    member do
      get :chef
    end
  end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
