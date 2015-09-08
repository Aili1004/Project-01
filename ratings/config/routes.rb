Rails.application.routes.draw do

	root :to => 'restaurants#index'

	get '/aboutus' => 'pages#aboutus'
	# root :to => 'pages#homepage'

	# get '/user_homepage' => 'pages#user_homepage'
	# get '/restaurant_homepage' => 'pages#restaurant_homepage'


	get '/users/edit' => 'users#edit', :as => :edit_user #by doing this, user is not able to see the id in the URL
  	get '/restaurant_users/edit' => 'restaurant_users#edit', :as => :edit_restaurant_user
  	

	resources :restaurants do
		resources :comments
	end
	

	resources :users, :except => [:edit]
	resources :restaurant_users, :except => [:edit]
	resources :restaurants, only: [:index, :show]
	resources :images

	get '/login' => 'session#new' 
	post '/login' => 'session#create' #log me in
	delete '/login' => 'session#destroy' #logout


	get '/restaurant_login' => 'session#restaurant_new' 
	post '/restaurant_login' => 'session#restaurant_create' #log me in
	delete '/restaurant_login' => 'session#restaurant_destroy' #logout

end
