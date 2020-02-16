require 'bcrypt'

class User < ApplicationRecord
	include BCrypt

	validates :username, presence: true, length: { maximum: 50 }
	# A macro is a method that when called, creates methods for you.
	has_secure_password
	validates :password, presence: true, length: { minimum: 6 }
end
