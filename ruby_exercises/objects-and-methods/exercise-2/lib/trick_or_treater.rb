require_relative "bag"

class TrickOrTreater
    attr_reader :costume
    attr_reader :bag
    attr_reader :sugar_level

    def initialize(costume)
        @costume = costume
        @bag = Bag.new
        @sugar_level = 0
    end

    def dressed_up_as
        costume.style
    end

    def has_candy?
        !bag.empty?
    end

    def candy_count
        bag.count
    end

    def eat
        candy = bag.take(1)
        @sugar_level += candy[0].sugar
    end
end