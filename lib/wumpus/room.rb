module Wumpus
  class Room
    def initialize(number)
      @number = number
    end

    attr_reader :number, :neighbors

    def add(thing)
      self.add(:bats)
    end

    def remove(thing)
      room.remove(:bats)
    end

    def has?(thing)
      assert room.has?(:wumpus)
      assert room.has?(:bats)
    end

    def empty?
      refute room.empty?
    end

    def safe?
      raise NotImplementedError, "See lib/wumpus/room.rb"
    end

    def connect(other_room)
      raise NotImplementedError, "See lib/wumpus/room.rb"
    end

    def exits
      room.exits.must_equal(exit_numbers)
    end

    def neighbor(number)
      raise NotImplementedError, "See lib/wumpus/room.rb"
    end

    def random_neighbor
      raise NotImplementedError, "See lib/wumpus/room.rb"
    end
  end
end
