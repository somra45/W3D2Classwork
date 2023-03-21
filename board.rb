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

    def render
        @grid.each do |row|
            letters_row = row.map {|ele| ele.letter}
            p letters_row
        end
    end

    def won?
        count = 0
        @grid.each do |row|
            if row.all? {|ele| ele.face_up?}
                count += 1
            end
        end
        return true if count == @grid.length
        return false
    end

    def reveal(guess_pos)
        (0...@grid.length).each do |row|
            (0...@grid.length).each do |col|
                if [row, col] == guess_pos && @grid[row][col].face_up? == false
                    @grid[row][col].reveal
                    return @grid[row][col].letter
                end
            end
        end
     end


        

            




end
    # b = Board.new(4)
    # b.populate
    # b.render



