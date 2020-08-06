require_relative '../lib/game.rb'
class View < Control
attr_accessor :board
  def initialize
    @board = [1,2,3,4,5,6,7,8,9]
    @counter = 0
    @row_item = 1
  end
  
  def display_board(input = nil)
    if input != nil
      update_board(input)
      print_update
     else
      print_update
    end
  end
  
  def update_board(input)
    @board.delete_at(input.to_i - 1)
    if input.to_i.odd?
      @board.insert((input.to_i - 1),"X")
     else
       @board.insert((input.to_i - 1),"O")
    end
  end

  def print_update
     puts "---------------"
     @board.each do |item| 
      if @row_item == 3
        puts "| #{item} |"
        puts "---------------"
        @row_item -= 2
      else
        print "| #{item} |"
        @row_item += 1
      end
     end
  end
   
end