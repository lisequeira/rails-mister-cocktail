Rails.application.routes.draw do

  get 'ingredients/new'

  get 'ingredients/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resource :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]

  root :to => "cocktails#index"

  resources :ingredients, only: [:new, :create, :index]

end
