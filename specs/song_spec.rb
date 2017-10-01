
require('minitest/autorun')
require('minitest/rg')

require_relative('../song.rb')

class TestSong < MiniTest::Test

	def setup()
		@song = Song.new("Mr Brightside", "The Killers", 3)
	end

	def test_can_create_song()
		assert_equal(Song, @song.class())
	end

	def test_title_of_song()
		assert_equal("Mr Brightside", @song.title())
	end

	def test_name_of_artist_or_band()
		assert_equal("The Killers", @song.artist())
	end

	def test_song_difficulty()
		assert_equal(3, @song.difficulty())
	end
end
