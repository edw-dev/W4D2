
class Piece
    
    def initialize(color, board, pos)
        @color = :white
        @board = board
        @pos = pos 
    end

    

    def inspect
        @color.inspect
    end
end