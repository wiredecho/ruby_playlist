class SongsController < ApplicationController
	def index
		@song = Song.find(params[:id])
		@users = User.where(song_id: params[:id])
	end


	
	


	def create
		song = Song.new(song_params)
		flash[:errors] = song.errors.full_messages unless song.save
		redirect_to :back
	end

	private
	def song_params
	  	params.require(:song).permit(:title, :artist)
	end

	


end
