require_relative '../lib/game.rb'
class View < Control
attr_accessor :board,:picks,:index
  def initialize
    @board = [1,2,3,4,5,6,7,8,9]
    @picks = picks
    @index = index
  end

  def make_row(number,input)
    if number % 3 == 0 || number == 3 || number == 6 || number == 9
      puts
      puts  "------------"
      puts
    end
  end
  
  def make_X(number)
     @board.delete(number)
     @board.insert(@index, "X")
     print_update(number)
  end

  def make_O(number)
     @board.delete(number)
     @board.insert(@index, "O")
     print_update(number)
  end

  def indish(input)
   @index = @board.find_index(input)
  end

  def print_update(number)
    print @board[@index]
  end
  
  def update_board(number, input)
    if input.to_i == number && number.odd?
      indish(number)
      make_X(number)
      make_row(number,input)
      
      elsif input.to_i == number && number.even?
      indish(number)
      make_O(number)
      make_row(number,input)
      
      elsif input.to_i != number
      print " #{number} |"
      make_row(number,input)
    end
  end

  def board(input = nil)
     @board.each do |number| 
      if input != nil
        update_board(number, input)
      elsif number % 3 == 0 && input == nil
        print " #{number} |" 
        make_row(number,input)
      else
        print " #{number} |"
        make_row(number,input)
       end
     end
  end
  
end

=begin
class Board

create initial board
display board
place player selections with X or O

=end