class UsersController < ApplicationController

	def index
		@user = current_user
		@user.lists = User.lists(user_params)
	end

	def show
		
	end	




	private
	def user_params
	  params.require(:user).permit(:name, :email, {avatar: []})
	end




end
