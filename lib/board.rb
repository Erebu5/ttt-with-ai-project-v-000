class Board
  attr_accessor :cells, :game

  def initialize
    reset!
  end

  def reset!
    self.cells = Array.new(9, " ")
  end

  def display
    puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
    puts "-----------"
    puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
    puts "-----------"
    puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
  end

  def position(input)
    cells[input.to_i - 1]
  end

  def full?
    cells.all? { |cell| cell != " " }
  end

  def turn_count
    self.cells.count { |value| value == "X" || value = "O" && value != " "}
  end

  def taken?(input)
    position(input) != " "
  end

  def valid_move?(input)
    input.to_i.between?(1,9) && !taken?(input)
  end

  def update(input, player)
    self.cells[input.to_i - 1] = player.token
  end
end
