module Wumpus
  class Room
    def initialize(number)
      #raise NotImplementedError, "See lib/wumpus/room.rb"
      @number = number
      @hazards = []
      @neighbors = []
    end

    # attr_reader :number, :neighbors
    attr_reader :neighbors
    attr_accessor :number
    attr_accessor :hazards
    attr_accessor :neighbors



    def add(thing)
      #  raise NotImplementedError, "See lib/wumpus/room.rb"
      @hazards << thing # this is a new one for me #### is this appending an array with thing???
    end

    def remove(thing)
      #raise NotImplementedError, "See lib/wumpus/room.rb"
    #  .delete(thing) ### small victory I knew it used .delete(thing) just not sure what I was deleting from

    @hazards.delete(thing) #### FROM SOLUTION

    end

    def has?(thing)
      #raise NotImplementedError, "See lib/wumpus/room.rb"
    #  .include?(thing) # I figured this one out myself too

    # from solution
    @hazards.include? thing  # checks if @hazards includes whatever is passed in as thing



    end

    def empty?
    #  raise NotImplementedError, "See lib/wumpus/room.rb"
    #  .empty  # I kind of figured this one out myself too

    @hazards.empty? # from solution

    end

    def safe?
    #  raise NotImplementedError, "See lib/wumpus/room.rb"
      #### found on the original repo
    #  empty? && neighbors.all? { |e| e.empty? } #still trying to figure this out

      # solution branch
    room_not_safe = @hazards.any? # sets variable to @hazards.any? look up .any? if there are any hazards the room is not safe?
    @neighbors.each do |the_neighbor| #itterate through @neighbors and pass in the neighbors arument
      if the_neighbor.hazards.any? # for each of the neighbors do the code
        room_not_safe = true # if any room is not safe set variable to true
      end
    end
    !room_not_safe #implicetley returns false if the room is safe?
    end

    def connect(other_room)
    #  raise NotImplementedError, "See lib/wumpus/room.rb"

    #solution branch
    @neighbors.push(other_room)
    other_room.neighbors.push self

    # is other rooms found in the file?

    end

    def exits
    #  raise NotImplementedError, "See lib/wumpus/room.rb"
    @neighbors.map { |exit| exit.number }
    ### returns a new array with the exit value??????


    end

    def neighbor(number)
    #  raise NotImplementedError, "See lib/wumpus/room.rb"

    @neighbors.select { |the_neighbor| the_neighbor.number == number }.first
    # returns the first element  setting number to the number in the neighbor array??????
    end

    def random_neighbor
    #  raise NotImplementedError, "See lib/wumpus/room.rb"
    @neighbors.sample ###thats a new one for me .sample look it up!!!
    ### chooses a random element from the neighbors array
    end
  end
end
