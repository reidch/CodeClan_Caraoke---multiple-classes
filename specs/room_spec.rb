require('minitest/autorun')
require('minitest/rg')

require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')

class TestRoom < MiniTest::Test

	def setup()
		@room = Room.new("VIP Room", 3)
		@room1 = Room.new("Afterparty", 10)
		@room2 = Room.new("Backstage", 5)

		@song1 = Song.new("Wonderwall", "Oasis", 2)

		@guest1 = Guest.new("Laura", 2, "£25")
		@guest2 = Guest.new("Clare", 3, "£35")
		@guest3 = Guest.new("Jacqui", 5, "£30")
	end

	def test_can_create_room()
		assert_equal(Room, @room.class())
	end

	def test_name_of_room()
		assert_equal("VIP Room", @room.name())
	end

	def test_check_in_guests_to_room()
		@room1.check_in(@guest1)
		@room1.check_in(@guest2)
		@room1.check_in(@guest3)
		assert_equal(3, @room1.guests())
	end

	def test_check_out_guests_from_room()
		@room1.check_in(@guest1)
		@room1.check_out(@guest1)
		assert_equal(0, @room1.guests())
	end

	def test_check_room_capacity()
		assert_equal(5, @room2.capacity())
	end

	def test_playlist_empty()
		assert_equal(0, @room.playlist())
	end

	def test_add_song_to_playlist_in_room()
		@room.add_song(@song1)
		assert_equal(1, @room.playlist())
	end
end
