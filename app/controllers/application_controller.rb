class ApplicationController < ActionController::Base
	#the rest of our controllers have access to this method
	
	#helpers to make them accessible to views
	helper_method :current_user
	helper_method :logged_in?

	def current_user
		User.find_by(id: session[:user_id])
	end

	def logged_in?
		!current_user.nil?
	end
end
