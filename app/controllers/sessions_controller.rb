class SessionsController < ApplicationController
	def songs
		@user = User.find(session[:user_id])
		@songs = Song.all.order! 'created_at DESC'
	end

	def create
		user = User.find_by(email: params[:email])

		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to "/songs"
		else
			flash[:errors] = ["You are an imposter!"]
			redirect_to "/"
		end
	end

	def destroy
		reset_session
		redirect_to :root
	end

end