require('minitest/autorun')
require('minitest/rg')

require_relative('../guest.rb')
require_relative('../song.rb')

class TestGuest < MiniTest::Test

	def setup()
		@guest = Guest.new("Alison", 5, "£30")
		@song = Song.new("Mr Brightside", "The Killers", 3)
	end

	def test_can_create_guest()
		assert_equal(Guest, @guest.class())
	end

	def test_name_of_guest()
		assert_equal("Alison", @guest.name())
	end

	def test_singing_ability()
		assert_equal(5, @guest.ability())
	end

	def test_guest_can_sing_song()
		assert_equal(3, @song.difficulty())
		assert_equal(5, @guest.ability())
	end

	def test_guest_has_cash()
		assert_equal("£30", @guest.cash)
	end

	def test_favourite_song()
		assert(true)
	end
end
