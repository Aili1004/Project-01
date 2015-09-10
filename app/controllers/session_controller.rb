class SessionController < ApplicationController
	def new
  end

  def restaurant_new
  end

	def create
		user = User.find_by :email => params[:email]
		if user.present? && user.authenticate(params[:password])
  			session[:user_id] = user.id
  			redirect_to root_path
  	else
  			redirect_to login_path
  	end
  end


  def restaurant_create
    restaurant_user = RestaurantUser.find_by :email => params[:email]
    if restaurant_user.present? && restaurant_user.authenticate(params[:password])
        session[:restaurant_user_id] = restaurant_user.id
        redirect_to root_path
    else
        redirect_to restaurant_login_path
    end
  end


	def destroy
    	session[:user_id] = nil
    	redirect_to root_path
  end


  def restaurant_destroy
      session[:restaurant_user_id] = nil
      redirect_to root_path
  end

end
