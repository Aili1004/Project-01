class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # happend before every controller begins to act
  before_action :fetch_current_user
  before_action :fetch_current_restaurant_user

  private
  def fetch_current_user

    # check if there's someone logged in whose data we need to load fo them
  	if session[:user_id].present?

      # .find_by is safer than .find for non-existent IDs because it won't throw an error
  		@current_user = User.find_by :id => session[:user_id]

      # Stop trying to log this user_id in if we can't find them in the database
  		session[:user_id] = nil unless @current_user.present?
  	end
  end


  def fetch_current_restaurant_user

    # check if there's someone logged in whose data we need to load fo them
    if session[:restaurant_user_id].present?

      # .find_by is safer than .find for non-existent IDs because it won't throw an error
      @current_restaurant_user = RestaurantUser.find_by :id => session[:restaurant_user_id]

      # Stop trying to log this user_id in if we can't find them in the database
      session[:restaurant_user_id] = nil unless @current_restaurant_user.present?
    end
  end

end
