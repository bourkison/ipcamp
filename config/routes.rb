Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	get '/auth/:provider/callback' => 'authentications#create'
	get 'signout', to: 'authentications#destroy', as: 'signout'
  root :to => "session#index"
  resources :users do
  	resources :authentications
  end

	resources :users
	resources :listings
	resources :bids
	resources :comments
  resources :follows

	get '/login' => 'session#new'
	delete '/login' => 'session#destroy'
	post '/login' => 'session#create'

  get '/comments_for/:id' => 'comments#comments_for'
end
