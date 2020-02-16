class UsersController < ApplicationController
  #methods that allow the user to log in to be available 
  skip_before_action :authorized, only: [:new, :create]

  def new
	  @user = User.new
  end

  def create

	@user = User.create(params.require(:user).permit(:username, :password))
	
	if @user.save
	  session[:user_id] = @user.id

	  flash[:notice] = 'User saved successfully'

	  redirect_to '/welcome'
	else
	  flash[:alert] = 'User was not saved.'

	  render '/users/new'
	end
  end

end
