require "/.board.rb"

class Card

    def initialize(letter)
        @letter = letter
        @face_up = true
    end

    def letter
        @letter
    end

    def face_up?
        @face_up
    end

    def card_value
        arr = ('A'..'Z').split("")
        @letter = arr.sample
    end

    def display
        if @face_up
            @letter
        else
            return ""
        end
    end

    def hide
        @face_up = false
    end

    def reveal
        @face_up = true
    end

    def ==(card)
        if self.letter == card.letter
            return true
        else
            return false
        end
    end 
end

