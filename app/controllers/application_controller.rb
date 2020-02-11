class ApplicationController < ActionController::Base
	#the rest of our controllers have access to this method
	
	#helpers to make them accessible to views
	#run before any other action is taken
	before_action :authorized
	helper_method :current_user
	helper_method :logged_in?

	def current_user
		User.find_by(id: session[:user_id])
	end

	def logged_in?
		!current_user.nil?
	end

	def authorized
		redirect_to '/welcome' unless logged_in?
	end
end
