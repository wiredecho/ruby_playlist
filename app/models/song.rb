class Song < ActiveRecord::Base
	belongs_to :songlist

	validates :title, presence: true, uniqueness: true, :length => {:minimum =>2}
	validates :artist, presence: true
end
