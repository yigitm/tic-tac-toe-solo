=begin
outline & store winning posibilities
store player 1 selection
store player 2 selection
check validity
if pass validity change turn to other player
store selections
check win or draw status
    
=end
require_relative '../lib/board.rb'
class Control
attr_accessor :name_1,:name_2,:input,:turn
 def initialize
    @name_1 = name_1
    @name_2 = name_2
    @input = input
    @turn = false
 end

 def turn_checker(name_1,name_2)
   if @turn == false
      puts "#{name_2} turn"
      @turn = true
   elsif @turn == true
      puts "#{name_1} turn"
      @turn = false
   end
 end


end
