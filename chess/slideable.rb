module Slideable
    def moves
        moves = []
        self.move_dirs
    moves
    end

    def horizontal_dirs
        row, col = [3,3] #self.pos
        horizontal_moves = []
        HORIZONTAL_DIRS.each do |dir|
            i = row
            j = col
            idx, jdx = dir
            direction = []
            while (i < 7 && i >= 1) && (j < 7 && j >= 1 )
                direction <<  i + idx, j + jdx
                i += idx
                j += jdx   
            end
            horizontal_moves << direction
        end
        horizontal_moves
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