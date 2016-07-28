class User < ActiveRecord::Base
	
  	has_secure_password

  	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  	validates :first_name, :presence => true
  	validates :last_name, :presence => true
  	validates :email, presence: true, uniqueness: { case_sensitive:false }, format: { with: EMAIL_REGEX }
end
