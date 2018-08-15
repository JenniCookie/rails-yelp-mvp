Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'restaurants', to: 'restaurants#index'

  get  '/restaurants/new', to: 'restaurants#new'
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  # create
  post '/restaurants', to: 'restaurants#create'

  # update
  get  '/restaurants/:id/edit', to: 'restaurants#edit'
  patch '/restaurants/:id', to: 'restaurants#update'

  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
end
