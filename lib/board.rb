require_relative '../lib/game.rb'
class View < Control
attr_accessor :board,:cycle_counter,:input,
:user_choices,:user_1_selects,:user_2_selects
  def initialize
    @board = [1,2,3,4,5,6,7,8,9]
    @cycle_counter = false
    @input = input
    @row_item = 1
    @user_choices = []
    @user_1_selects = []
    @user_2_selects = []
  end

  def cycle_maker(&game_cycle)
    yield(game_cycle)
  end
  
  def display_board(input, name_1, name_2)
      if input_checker(input) == false
        puts "Invalid! 1-9 number entry"
        turn_prompter(name_1, name_2)
        puts @turn
        print_update
      elsif @board[(input.to_i) - 1].class == String
        puts "Invalid! Select another number"
        turn_prompter(name_1, name_2)
        puts @turn
        print_update
      else
        turn_switcher(input)
        update_board(input, turn)
        print_update
        turn_prompter(name_1, name_2)
        user_choice_taker(input)
        result_checker(input)
      end
  end
  
  def update_board(input, turn)
    if @turn == false
      @board.delete_at(input.to_i - 1)
      @board.insert((input.to_i - 1),"O")
    elsif @turn == true
       @board.delete_at(input.to_i - 1)
       @board.insert((input.to_i - 1),"X")
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