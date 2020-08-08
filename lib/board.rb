require_relative '../lib/game.rb'
class View < Control
attr_accessor :board,:display_board,:input
  def initialize
    @board = [1,2,3,4,5,6,7,8,9]
    @counter = 0
    @row_item = 1
    @input = input
  end
  
  def display_board(input)
      if input_checker(input) == false
        puts "Invalid! 1-9 number entry"
        print_update
      elsif @board[(input.to_i) - 1].class == String
        puts "Invalid! Select another number"
        print_update
      else
        update_board(input)
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
     puts "---TicTacToe---"
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