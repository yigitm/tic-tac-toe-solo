require_relative '../lib/game.rb'
class View < Control
attr_accessor :board,:picks
  def initialize
    @board = (1..9).to_a
    @picks = picks
  end

  def check(i, input)
    if input.to_i == i && i.odd?
      print "X |" 
      elsif input.to_i == i && i.even? 
      print "O |"
      else
       i
    end
  end

  def view_board(input = nil)
      loop do
      puts "-------------"
      i = 1       
        if i % 3 == 0
          check(i, input)
          puts 
          puts "-------------"
        else
          check(i, input)
        end  
       i += 1  
       break if i <= 9
      end
  end
  

end

=begin
class Board

create initial board
display board
place player selections with X or O

=end