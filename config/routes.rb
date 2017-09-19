Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => "users#index"
  resources :users
	resources :listings
	resources :bids
	resources :comments
	get '/login' => 'session#new'
	delete '/login' => 'session#destroy'
	post '/login' => 'session#create'
end
