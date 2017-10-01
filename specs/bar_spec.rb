require('minitest/autorun')
require('minitest/rg')

require_relative('../bar.rb')

class TestBar < MiniTest::Test

	def setup()
		@bar = Bar.new("Music Box")
	end

	def test_name_of_bar()
		assert_equal("Music Box", @bar.name())
	end
end
