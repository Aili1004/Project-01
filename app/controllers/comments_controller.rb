class CommentsController < ApplicationController
	def index
		@comments = Comment.all
	end

	def show
		@comment = Comment.find params[:id]
	end

	def new
		@restaurant = Restaurant.find params[:restaurant_id]
		@comment = Comment.new
	end

	def create
		restaurant = Restaurant.find params[:restaurant_id]
		restaurant.comments.create comment_params
		redirect_to restaurant_path(restaurant)
	end

	def edit
		@comment = Comment.find params[:id]
	end

	def update
		comment = Comment.find params[:id]
		comment.update comment_params
		redirect_to comment
	end

	def destroy
		comment = Comment.find params[:id]
		comment.destroy
		redirect_to comments_path
	end

	private
	def comment_params
		params.require(:comment).permit(:content, :like, :restaurant_id, :user_id)
	end
end
