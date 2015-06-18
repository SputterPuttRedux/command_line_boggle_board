require_relative '../controllers/game.rb'

class Die
  attr_accessor :letters
  def initialize
    @letters = [
      %w(A A E E G N),
      %w(E L R T T Y),
      %w(A O O T T W),
      %w(A B B J O O),
      %w(E H R T V W),
      %w(C I M O T V),
      %w(D I S T T Y),
      %w(E I O S S T),
      %w(D E L R V Y),
      %w(A C H O P S),
      %w(H I M N Q U),
      %w(E E I N S U),
      %w(E E G H N W),
      %w(A F F K P S),
      %w(H L N N R Z),
      %w(D E I L R X)
    ]
  end
end
