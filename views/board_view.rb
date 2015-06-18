require 'pry'
require_relative '../controllers/game.rb'

class BoardView
  attr_accessor :game

  def initialize
    @game = Game.new
  end

  def show_board
    @game.shake!.each_slice(4) do |slice|
      p slice.join(' | ')
    end
  end
end

this_board = BoardView.new
this_board.show_board
