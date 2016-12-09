module Wumpus
  class Room
    def initialize(number)
      @number = number
      @things = []
      @neighbors = {}
    end

    attr_reader :number, :neighbors

    def add(thing)
      @things.push(thing)
    end

    def remove(thing)
      @things.delete(thing)
    end

    def has?(thing)
      @things.include?(thing)
    end

    def empty?
      @things.empty?
    end

    def safe?
      if !empty?
        false
      else
        are_empty = @neighbors.values.map { |neighbor| neighbor.empty? }
        !are_empty.include?(false)
      end
    end

    def connect(other_room)
      @neighbors[other_room.number] = other_room
    end

    def exits
      neighbors.keys
    end

    def neighbor(number)
      @neighbors[number]
    end

    def random_neighbor
      @neighbors.values.sample
    end
  end
end
