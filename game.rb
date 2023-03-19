require "./board.rb"

class Game
    def initialize(size)
        @board = Board.new(size)
        @previous_guess = []
        @guess_position = []
        @current_guess = @guess_position
    end

    def make_guess
        puts "Enter a coordinate in the form number space number"

        guess = gets.chomp.split(" ").map{ |num| num.to_i}

        guess
    end

    def play 
        @board.populate

        while 
    end
end