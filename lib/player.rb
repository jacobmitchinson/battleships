require './lib/board'

class Player

  def initialize 
    @board = Board.new
  end

  def place(ship, starting_cell, orientation)
    if orientation == "vertical"
      @board.add_ship_vertical(ship, starting_cell)
      true
    elsif orientation == "horizontal"
      @board.add_ship_horizontal(ship, starting_cell)
      true
    else
      raise "Please specify horizontal or verticle"
    end
  end
  
end