require "./card.rb"

class Board
    attr_reader :num
    def initialize(num)
        @grid = Array.new(num) {Array.new(num, "")}
        @cards = []
        @num = num
        if num.odd?
            raise "size of board must be an even number"
        end
    end

    def empty?(position)
        (0...grid.length).each do |row|
            (0...grid[0].length).each do |column|
                return true if @grid[row][column] == "" && [row, column] == position
            end
        end
        false
    end

    def populate
        letters_arr = []
        cards_arr = Card.shuffle((num * num)/2 )
            (0...@grid.length).each do |row|
                (0...@grid[0].length).each do |column|
                    @grid[row][column] = cards_arr.pop
                    @cards << @grid[row][column]
                end
            end
    end

    def print_board
        @grid.each do |row|
            letters_row = row.map {|ele| ele.letter}
            p letters_row
        end
    end
end
    b = Board.new(4)
    b.populate
    b.print_board



