class SongsController < ApplicationController


	def create
		user = User.find(session[:user_id])
		song = Song.new(song_params)
		song.added=0
		flash[:errors] = song.errors.full_messages unless song.save
		redirect_to :back
	end

	private
	def song_params
	  	params.require(:song).permit(:title, :artist, :added, :user_id)
	end




end
