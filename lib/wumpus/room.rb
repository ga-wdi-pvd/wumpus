module Wumpus
  class Room

    def initialize(number)
      @number = number
    end

    attr_reader :number, :neighbors

    def add(things)
      # puts "There are ${things} in the room!"
      @things = things
      # put a hazard in the room 
    end

    def remove(thing)
      # raise NotImplementedError, "See lib/wumpus/room.rb"
    end

    def has?(thing)
      # raise NotImplementedError, "See lib/wumpus/room.rb"
    end

    def empty?
      # raise NotImplementedError, "See lib/wumpus/room.rb"
    end

    def safe?
      # raise NotImplementedError, "See lib/wumpus/room.rb"
    end

    def connect(other_room)
      # raise NotImplementedError, "See lib/wumpus/room.rb"
    end

    def exits
      # raise NotImplementedError, "See lib/wumpus/room.rb"
    end

    def neighbor(number)
      # raise NotImplementedError, "See lib/wumpus/room.rb"
    end

    def random_neighbor
      # raise NotImplementedError, "See lib/wumpus/room.rb"
    end
  end

room1 = Room.new(1)

end
