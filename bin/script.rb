#!/usr/bin/env ruby
require_relative '../lib/board.rb'
require_relative '../lib/game.rb'
view = View.new
control = Control.new
  puts "
████████╗██╗ ██████╗    ████████╗ █████╗  ██████╗    ████████╗ ██████╗ ███████╗
╚══██╔══╝██║██╔════╝    ╚══██╔══╝██╔══██╗██╔════╝    ╚══██╔══╝██╔═══██╗██╔════╝
   ██║   ██║██║            ██║   ███████║██║            ██║   ██║   ██║█████╗  
   ██║   ██║██║            ██║   ██╔══██║██║            ██║   ██║   ██║██╔══╝  
   ██║   ██║╚██████╗       ██║   ██║  ██║╚██████╗       ██║   ╚██████╔╝███████╗
   ╚═╝   ╚═╝ ╚═════╝       ╚═╝   ╚═╝  ╚═╝ ╚═════╝       ╚═╝    ╚═════╝ ╚══════╝                                                                              
  "
  puts "Please type first player name"
  name_1 = gets.chomp
  puts "Please type second player name"
  name_2 = gets.chomp
  view.print_board
  control.turn_prompter(name_1, name_2)
  game_cycle = Proc.new {
    puts "Pick any number between 1 to 9"
    control.input_checker(input = gets.chomp)
    view.display_board(input, name_1, name_2)
  }
  view.cycle_maker(&game_cycle)
  

=begin
puts "Game Over Win!"
puts "Game Over Draw!"
=end