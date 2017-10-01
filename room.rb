class Room

	def initialize(name, capacity)
		@name = name
		@guests = []
		@playlist = []
		@capacity = capacity
	end

	def name()
		return @name
	end

	def guests()
		return @guests.length()
	end

	def check_in(guest)
		@guests << guest
	end

	def check_out(guest)
    index = @guests.index(guest)
    @guests.slice!(index, 1)
  end

	def capacity()
		return @capacity
	end

	def check_room_has_space()
		if @guests.length <= @capacity
			return "Yes, your chosen room is available"
		elsif @guests.length > @capacity
			return "Sorry, please try another room"
		end
	end

	def playlist()
    return @playlist.length()
  end

	def add_song(song)
		@playlist << song
	end
end
