require_relative '../lib/game.rb'
class View < Control
attr_accessor :cycle_counter,:input,
:user_choices,:user_1_selects,:user_2_selects
  def initialize
    @cycle_counter = false
    @input = input
    @row_item = 1
    @user_choices = []
    @user_1_selects = []
    @user_2_selects = []
  end
  
  def display_board(input, name_1, name_2)
      if input_checker(input) == false
        puts "Please pick a number between 1 to 9"
        turn_prompter(name_1, name_2)
        print_board
      else
        user_choice_splitter(input)
        result_checker(name_1, name_2)
        turn_switcher(input)
        update_board(input, turn)
        print_board
        turn_prompter(name_1, name_2)
      end
  end
  
  def update_board(input, turn)
    if @turn == false
      @@board.delete_at(input.to_i - 1)
      @@board.insert((input.to_i - 1),"O")
    elsif @turn == true
       @@board.delete_at(input.to_i - 1)
       @@board.insert((input.to_i - 1),"X")
    end
  end

  def print_board
     puts "---TicTacToe---"
     @@board.each do |item| 
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