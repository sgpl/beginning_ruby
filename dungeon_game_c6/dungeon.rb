class Dungeon
	attr_accessor :player

	def initialize(player_name)
		@player = Player.new(player_name)
		@rooms = []
	end

	Player = Struct.new(:name, :location)
	Room = Struct.new(:reference, :name, :description, :connections)
end











=begin

# framework for the dungeon. 
# initial version. 

class Dungeon
	attr_accessor :player

	def initialize(player_name)
		@player = Player.new(player_name)
		@rooms = []
	end

	class Player
		attr_accessor :name, :location

		def initialize(player_name)
			@name = player_name
		end
	end



	class Room
		attr_accessor :reference, :name, :description, :connections

		def initialize(reference, name, description, connections)
			@reference = reference 
			@name = name 
			@description = description 
			@connections = connections
		end
	end
end

=end
		
