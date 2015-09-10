class RestaurantUsersController < ApplicationController
	def index
		@restaurant_users = RestaurantUser.all
	end

	def new
		@restaurant_user = RestaurantUser.new
	end

	def create
		@restaurant_user = RestaurantUser.new restaurant_user_params
		if @restaurant_user.save
			redirect_to root_path
		else
			render :new
		end

	end

	def edit
    	@restaurant_user = @current_restaurant_user
  	end

	def update
    	@restaurant_user = @current_restaurant_user
    	if @restaurant_user.update restaurant_user_params
      		redirect_to root_path
    	else
    		render :edit
    	end
    end

	private
	def restaurant_user_params
		params.require(:restaurant_user).permit(:email, :name, :license_number, :password, :password_confirmation)
	end
end
