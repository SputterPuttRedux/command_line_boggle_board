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
    def initialize(grid_size)
      @grid_size = grid_size
    end

    def corner_coordinates

    end

    def at_corner?
    end

  end
end