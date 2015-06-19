require 'pry'
require_relative '../controllers/game.rb'
require_relative '../models/die.rb'
require_relative '../models/board.rb'

class Game
  attr_accessor :board, :die
  def initialize
    @board = Board.new
    @die = Die.new
  end

  def shake!
    slots_count.times do
      @board.slots << place_a_die
    end
    @board.slots
  end

  private

  def place_a_die
    @die.letters.shuffle.pop.sample
  end

  def slots_count
    @die.letters.count
  end
end

module GridSolver
  class Boggle
    #only allows for even grid
    def initialize(board)
      @board = board
    end

    def corner_coordinates
      [0,3].repeated_permutation(2).to_a
    end

    def at_corner?
    end

    def grid_coordinates
      count_for_row_coordinate = 0

      @board.each_slice(4) do |row|
        row.map do |letter|
          Array.new(2){
            [count_for_row_coordinate, row.index(letter)]
          }
        end
        count_for_row_coordinate += 1
      end
    end
  end
end

#  test = Array.new(16){[nil,nil]}
#  count = 0
#  test.each_slice(4) do |row|
#   row.map do |inner_array|
#     inner_array[0] = count
#     inner_array[-1] = row.index(inner_array)
#   end
#   count += 1
# end
