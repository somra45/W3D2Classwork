
class Card
    ARR = ('A'..'Z').to_a

    def initialize(letter)
        @letter = letter
        @face_up = false
    end

    def letter
        @letter
    end

    def face_up?
        @face_up
    end

    def self.card_value
        ARR.sample
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

    def self.shuffle(num_pairs)
        array_of_pairs = []
        count = 0
        while count < num_pairs
            pair_letter = self.card_value
            2.times do 
                array_of_pairs << Card.new(pair_letter)
            end
            count += 1
        end
        array_of_pairs.shuffle!
    end
end

