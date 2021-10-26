require_relative "piece"
class Board
    def initialize()
        @grid = Array.new(8){Array.new(8, nil)}
        @grid.each_with_index do |row, idx1|
            if idx1 == 0 || idx1 == 1 || idx1 == 6 || idx1 == 7
                row.each_with_index do |ele, idx2|
                    @grid[idx1][idx2] = Piece.new([idx1, idx2])
                end
            end
        end
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
    end

    def add_piece(piece, pos)
        @grid[pos] = piece
    end

    def move_piece(start_pos, end_pos)
        raise "no piece at start position" if self[start_pos].nil?
        #fix conitional logic
        raise "piece cannot reach end position" if !self[end_pos].nil?
        self[end_pos] = self[start_pos]
        self[start_pos] = nil
    end
end