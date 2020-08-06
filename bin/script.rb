#!/usr/bin/env ruby
require_relative '../lib/board.rb'
require_relative '../lib/game.rb'
view = View.new
control = Control.new
  puts "Please type first player name"
  name_1 = gets.chomp
  puts "Please type second player name"
  name_2 = gets.chomp
  
  view.print_update
  9.times do  
    puts "Pick any number between 1 to 9 \n"
    view.display_board(input = gets.chomp)
    control.turn_checker(name_1, name_2)
    
    
  end

=begin  
puts "Invalid Move"
puts "Game Over Win!"
puts "Game Over Draw!"
=end
