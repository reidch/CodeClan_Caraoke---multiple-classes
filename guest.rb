class Guest

	def initialize(name, ability, cash)
		@name = name
		@ability = ability
		@cash = cash
	end

	def name()
		return @name
	end

	def ability()
		return @ability
	end

	def guest_can_sing_song()
		puts "Please enter your name"
		if @ability >= @song.difficulty
			return "You're up next #{@name}!"
		else
			return "Sorry #{@name}, maybe next time!"
		end
	end

	def cash()
		return @cash
	end

	def favourite_song()
		if @room.playlist.include?("Mr Brightside")
			return "Woo hoo!"
		end
	end

end
