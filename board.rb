class board

    def initialize(num)
        @grid = Array.new(num){Array.new(num), ""}
        @cards = []
        if num.odd?
            raise "size of board must be an even number"
        end
    end

    def populate
        (0...grid.length).each do |row|
            (0...grid[0].length).each do |column|
                @grid[row][column] = Card.new(Card.card_value.letter)
            end
        end
    end



end