require_relative '../lib/game.rb'
class View < Control
attr_accessor :input,
:user_choices,:user_1_selects,:user_2_selects
  def initialize
    @input = input
    @user_choices = []
    @user_1_selects = []
    @user_2_selects = []
    @row_item = 1
  end
  
  def display_board(input, name_1, name_2)
      if input_checker(input) == false
        puts "Please pick a number between 1 to 9"
        turn_prompter(name_1, name_2)
        print_board
      else
        input_splitter(input)
        result_checker(name_1, name_2)
        game_exit
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