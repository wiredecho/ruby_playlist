class UsersController < ApplicationController

  def main
    @users = User.all
  end

  def create
  	user = User.new(user_params)

  	if user.save
  		session[:user_id] = user.id
  		redirect_to "/songs"
  	else
  		flash[:errors] = user.errors.full_messages
  		redirect_to '/'
  	end
  end

  private
  def user_params
  	params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end