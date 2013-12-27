class Dungeon
	attr_accessor :player

	def initialize(player_name)
		@player = Player.new(player_name)
		@rooms = []
	end

	Player = Struct.new(:name, :location)
	Room = Struct.new(:reference, :name, :description, :connections)

	def add_room(reference, name, description, connections)
		@rooms << Room.new(reference, name, description, connections)
	end

	def start(location)
		@player.location = location
		show_current_description
	end

	def show_current_description
		puts find_room_in_dungeon(@player.location).full_description
	end

	def find_room_in_dungeon(reference)
		@rooms.detect {|room| room.reference == reference}
	end

	class Room
		def full_description
			@name + "\n\nYou are in " + @description
		end
	end
end


my_dungeon = Dungeon.new("Sharad Gopal")
puts my_dungeon.player.name

my_dungeon.add_room(:largecave, "Large Cave", "a large cavernous cave", {:west => :smallcave})
my_dungeon.add_room(:smallcave, "Small Cave", "a small cavernous cave", {:east => :largecave})










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
		
