class SessionsController < ApplicationController
  def new
  end

  def create

	  @user = User.find_by(username: params[:username])

          #Bcrypt authenticate method takes password params 
	  if @user && @user.authenticate(params[:password])
		  #the id is stored in a session
		  sessions[:user_id] = @user.id
		  redirect_to '/welcome'
	  else
		  redirect_to '/login'
	  end
  end

  def login
  end

  def welcome
  end
end
