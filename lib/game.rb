=begin
outline & store winning posibilities
store player 1 selection
store player 2 selection
if pass validity change turn to other player
store selections
check win or draw status
    
=end
require_relative '../lib/board.rb'
class Control
attr_accessor :turn
 def initialize
    @turn = false
 end

 def turn_switcher(input)
   if @turn == true
      @turn = false
   else @turn == false
     @turn = true
   end
 end

 def turn_prompter(name_1, name_2)
   if @turn == false
    puts "Your turn: #{name_1}"
   else
    puts "Your turn: #{name_2}"
   end
 end

 def input_checker(input)
   if (1..9).any?(input.to_i) == false
      return false
   end
 end

  def user_choice_taker(input)
   @user_choices.push(input.to_i)
   puts "user_selections #{@user_choices}\n"
  end

  def result_checker(input)
    if @user_choices.index(input.to_i) % 2 == 0 || @user_choices.index(input.to_i) == 0 
      @user_1_selects << input
    else 
      @user_2_selects << input
    end
     print "user_1 #{@user_1_selects}\n" 
     puts "user_2 #{@user_2_selects}"
  end
end