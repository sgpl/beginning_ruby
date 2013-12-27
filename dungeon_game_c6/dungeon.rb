class Dungeon
	attr_accessor :player

	def initialize(player_name)
		@player = Player.new(player_name)
		@rooms = []
	end

	# Player = Struct.new(:name, :location)
	# Room = Struct.new(:reference, :name, :description, :connections)

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


	def find_room_in_direction(direction)
		find_room_in_dungeon(@player.location).connections[direction]
	end

	def go(direction)
		puts "You go " + direction.to_s
		@player.location = find_room_in_direction(direction)
		show_current_description
	end

	class Player
		attr_accessor :name, :location

		def initialize(name)
			@name = name
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

		def full_description
			@name + "\nYou are in " + @description
			# print "Where do you want to go next? "; input = gets.chomp.to_sym
		end
	end
end



# creating main dungeon object:

my_dungeon = Dungeon.new("Sharad Gopal")
# puts my_dungeon.player.name


# adding rooms to dungeon:
my_dungeon.add_room(:largecave, "Large Cave", "a large cavernous cave", {:west => :smallcave})
my_dungeon.add_room(:smallcave, "Small Cave", "a small cavernous cave", {:east => :largecave})



# start dungeon
print "Where do you want to start from?"; input = gets.chomp.to_sym
my_dungeon.start(input)

#
# my_dungeon.go(:west)






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
		
