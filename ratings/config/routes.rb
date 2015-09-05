Rails.application.routes.draw do

	root :to => 'restaurants#index'

	get '/users/edit' => 'users#edit', :as => :edit_user #by doing this, user is not able to see the id in the URL
  	resources :restaurants do
  		resources :comments
  	end
  	resources :users, :except => [:edit]

	get '/login' => 'session#new' 
	post '/login' => 'session#create' #log me in
	delete '/login' => 'session#destroy' #logout
end
