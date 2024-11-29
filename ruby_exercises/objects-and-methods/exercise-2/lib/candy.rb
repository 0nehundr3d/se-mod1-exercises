class Candy
    attr_reader :type
    attr_reader :sugar

    def initialize(type, sugar = 100)
        @type = type
        @sugar = sugar
    end
end