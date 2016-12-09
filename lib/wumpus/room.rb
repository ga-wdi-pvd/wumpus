require 'pry'
#adf
module Wumpus

  # A room with neighbors is not safe if its neighbors have hazards
  # A room with neighbors is safe when it and its neighbors have no hazards
  # A room with neighbor has two-way connection to neighbors
  # A room with neighbors can choose a neighbor randomly
  # A room with neighbors knows the numbers of all neighboring rooms
  # A room is not safe if it has hazards
class Room
    def initialize(number)
      @number = number
      @hazard = []
      @neighbors = []
    end

    attr_reader :number, :neighbors

    def add(thing)
      @hazard.push(thing)
    end

    def remove(thing)
      @hazard.delete(thing)
    end

    def has?(thing)
      @hazard.include?(thing)
    end

    def empty?
      @hazard.empty?
    end

    def safe?
      empty? && neighbors.all? do |neighbor|
        neighbor.empty?
      end
    end

    def connect(other_room)
      @neighbors.push(other_room)
      other_room.neighbors.push(self)
    end

    def exits
      neighbors.map do |e|
        e.number
      end
    end

    def neighbor(number)
      neighbors.find do
         |e| e.number == number
       end
    end

    def random_neighbor
      neighbors.sample
    end
  end
end
binding.pry
