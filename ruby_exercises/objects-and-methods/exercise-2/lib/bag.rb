class Bag
    attr_accessor :candies

    def initialize()
        @candies = []
    end

    def empty?
        candies.empty?
    end

    def count
        candies.length
    end

    def <<(candy)
        candies.push(candy)
    end

    def contains?(type)
        for candy in candies do
            if candy.type == type
                return true
            end
        end
        false
    end

    def grab(type)
        for candy in candies do
            if candy.type == type
                candies.delete(candy)
                return candy
            end
        end
    end

    def take(ammount)
        candies.pop(ammount)
    end
end