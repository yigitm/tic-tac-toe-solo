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
attr_accessor :board,:turn,:win_parallel,:win_vertical,:win_cross,:cycle_end
 def initialize
    @@board = [1,2,3,4,5,6,7,8,9]
    @turn = false
    @@win_parallel = [[1,2,3],[4,5,6],[7,8,9]]
    @@win_vertical = [[1,4,7],[2,5,8],[3,6,9]]
    @@win_cross = [[1,5,9],[3,5,7]]
    @@cycle_end = false
 end

def cycle_maker(&game_cycle)
  @@board.cycle {yield(game_cycle)}
end

def game_exit
  if @@cycle_end == true
    abort("Game Over")
  end
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
   if (1..9).any?(input.to_i) == false || @@board[(input.to_i) - 1].class == String
      return false
   end
 end

  def input_splitter(input)
    @user_choices.push(input.to_i)
    if @user_choices.index(input.to_i) % 2 == 0 || @user_choices.index(input.to_i) == 0 
      @user_1_selects << input.to_i
    else 
      @user_2_selects << input.to_i
    end
  end

  def result_checker(name_1, name_2)
    if (@@win_parallel + @@win_vertical+ @@win_cross).one?(user_1_selects) == true
       puts "#{name_1} win!"
       @@cycle_end = true
    elsif (@@win_parallel + @@win_vertical+ @@win_cross).one?(user_2_selects) == true
      puts "#{name_2} win!"
      @@cycle_end = true
    elsif @user_choices.length == 9
      puts "No winner!"
      @@cycle_end = true
    end
  end
end