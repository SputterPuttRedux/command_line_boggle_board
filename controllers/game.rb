class Game
  def initialize
    @board = Board.new
    @die = Die.new
  end

  def shake!
    16.times { @board.slots << place_a_die }
    @board
  end

  private

  def place_a_die
    @die.letters.shuffle.pop
  end

end