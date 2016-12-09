module Wumpus
class Room
  def initialize(number)
    @number = number
    @hazards = []
    @neighbors = []
    # raise NotImplementedError, "See lib/wumpus/room.rb"
  end

  attr_reader :number, :neighbors

  def add(thing)
    return @hazards.push(thing)
    # raise NotImplementedError, "See lib/wumpus/room.rb"
  end

  def remove(thing)
    return @hazards.delete(thing)
    # raise NotImplementedError, "See lib/wumpus/room.rb"
  end

  def has?(thing)
    return @hazards.include?(thing)
    # raise NotImplementedError, "See lib/wumpus/room.rb"
  end

  def empty?
    return @hazards.empty?
    # raise NotImplementedError, "See lib/wumpus/room.rb"
  end

  def safe?
    return empty?
    # raise NotImplementedError, "See lib/wumpus/room.rb"
  end

  def connect(other_room)
    neighbors.push(other_room)
    other_room.neighbors.push(self)
    # raise NotImplementedError, "See lib/wumpus/room.rb"
  end

  def exits

    raise NotImplementedError, "See lib/wumpus/room.rb"
  end

  def neighbor(number)
    neighbors.find(number)
    # raise NotImplementedError, "See lib/wumpus/room.rb"
  end

  def random_neighbor
    return neighbors.sample
    # raise NotImplementedError, "See lib/wumpus/room.rb"
  end
end
end
