require 'bcrypt'

class User < ApplicationRecord
	include BCrypt
	# A macro is a method that when called, creates methods for you.
	has_secure_password
end
