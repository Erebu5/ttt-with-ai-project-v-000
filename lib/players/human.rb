module Players
  class Human < Player

    def move(board)
      puts "Place your token by picking a position, from 1 thru 9: "
      input = gets.strip
    end
  end
end
