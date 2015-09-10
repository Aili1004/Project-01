class RestaurantsController < ApplicationController

	def index
		@restaurants = Restaurant.all
	end

	def show
		@restaurant = Restaurant.find params[:id]
		
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		restaurant = Restaurant.create restaurant_params

		restaurant.images = []

		params[:restaurant][:image].each do |img|
			restaurant.images.create :image => img
		end
		
		redirect_to restaurants_path

	end

	def edit
		@restaurant = Restaurant.find params[:id]
	end

	def update
		restaurant = Restaurant.find params[:id]
		restaurant.update restaurant_params
		
		restaurant.images = []

		params[:restaurant][:image].each do |img|
			restaurant.images.create :image => img
		end
		redirect_to restaurant
	end	

	def destroy
		restaurant = Restaurant.find params[:id]
		restaurant.destroy
		redirect_to restaurants_path
	end

	private
	def restaurant_params
		params.require(:restaurant).permit(:name, :description, :address, :opening_hours, :popular_food, :count, :totalcount, :restaurant_user_id)
	end
end
