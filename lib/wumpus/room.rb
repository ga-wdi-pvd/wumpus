module Wumpus
    class Room
        def initialize(number)
            @number = number
            @neighbors = []
            @hazards = []

            # raise NotImplementedError, "See lib/wumpus/room.rb"
        end

        attr_reader :number, :neighbors

        def add(thing)
            @hazards.push(thing)

            #     raise NotImplementedError, "See lib/wumpus/room.rb"
        end

        def remove(thing)
            @hazards.delete(thing)

            #      raise NotImplementedError, "See lib/wumpus/room.rb"
        end

        def has?(thing)
            @hazards.include?(thing)

            #      raise NotImplementedError, "See lib/wumpus/room.rb"
        end

        def empty?
            @hazards.empty?

            # raise NotImplementedError, "See lib/wumpus/room.rb"
        end

        def safe?
            tmp = [@hazards.empty?]
            @neighbors.each { |i| tmp.push(i.empty?) }
            !tmp.include?(false)

            #      raise NotImplementedError, "See lib/wumpus/room.rb"
        end

        def connect(other_room)
            @neighbors.push(other_room)
            other_room.neighbors.push(self)

            # raise NotImplementedError, "See lib/wumpus/room.rb"
        end

        def exits
            tmp = []
            @neighbors.each { |i| tmp.push(i.number) }
            tmp

            # raise NotImplementedError, "See lib/wumpus/room.rb"
        end

        def neighbor(number)
            @neighbors[@neighbors.index { |i| i.number == number }]

            # raise NotImplementedError, "See lib/wumpus/room.rb"
        end

        def random_neighbor
            @neighbors[Random.rand(@neighbors.length)]

            # raise NotImplementedError, "See lib/wumpus/room.rb"
        end
    end
end
