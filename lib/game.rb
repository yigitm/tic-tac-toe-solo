require_relative '../lib/board.rb'
class Control
attr_accessor :board,:turn,:win_parallel,:win_vertical,:win_cross,:cycle_end,
:input,:user_choices,:user_1_selects,:user_2_selects
 def initialize
    @@board = [1,2,3,4,5,6,7,8,9]
    @@turn = false
    @@win_parallel = [[1,2,3],[4,5,6],[7,8,9]]
    @@win_vertical = [[1,4,7],[2,5,8],[3,6,9],[7,4,1],[8,5,2],[9,6,3]]
    @@win_cross = [[1,5,9],[3,5,7],[9,5,1],[7,5,3]]
    @@cycle_end = false
    @@input = input
    @@user_choices = []
    @@user_1_selects = []
    @@user_2_selects = []
 end

def cycle_maker(&game_cycle)
  @@board.cycle {yield(game_cycle)}
end

 def turn_switcher(input)
   if @@turn == true
      @@turn = false
   else @@turn == false
     @@turn = true
   end
 end

 def turn_prompter(name_1, name_2)
   if @@turn == false
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
    @@user_choices.push(input.to_i)
    if @@user_choices.index(input.to_i) % 2 == 0 || @@user_choices.index(input.to_i) == 0 
      @@user_1_selects << input.to_i
    else 
      @@user_2_selects << input.to_i
    end
  end

  def parallel_result_checker(name_1,name_2)
    if @@win_parallel.include?(@@user_1_selects.sort) == true
      puts "#{name_1} wins!"
      @@cycle_end = true
    elsif @@win_parallel.include?(@@user_2_selects.sort) == true
      puts "#{name_2} wins!"
      @@cycle_end = true
    end
  end

def vertical_result_checker(name_1,name_2)
  @@win_vertical.each do |sub_array|
    if (sub_array&@@user_1_selects).length == 3
      puts "#{name_1} wins!"
      @@cycle_end = true
    elsif (sub_array&@@user_2_selects).length == 3
      puts "#{name_2} wins!"
      @@cycle_end = true
    end
  end
end

def cross_result_checker(name_1,name_2)
  @@win_cross.each do |sub_array|
    if (sub_array&@@user_1_selects).length == 3
      puts "#{name_1} wins!"
      @@cycle_end = true
    elsif (sub_array&@@user_2_selects).length == 3
      puts "#{name_2} wins!"
      @@cycle_end = true
    end
  end
end

def game_exit(name_1,name_2)
  if @@cycle_end == true 
      abort"Game Over"
  elsif @@board.count("X") == 5
    abort"No winner !"
  end
end
  
end