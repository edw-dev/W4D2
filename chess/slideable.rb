module Slideable
    def moves
        moves = []
        self.move_dirs
    moves
    end

    def horizontal_dirs
        row, col = self.pos
        horizontal_moves = []
        HORIZONTAL_DIRS.each do |dir|
            i = row
            while i < 8 && i >= 0
                horizontal_moves <<  + dir
            i+= 1
            end
        end
    end

    def diagonal_dirs

    end

    private
    HORIZONTAL_DIRS = [
        [-1, 0],
        [0, 1],
        [1, 0],
        [0, -1]
    ]

    
end

class Rook < Piece
include slideable
    def initialize
        super
    end

    private
    def move_dirs

    end
end