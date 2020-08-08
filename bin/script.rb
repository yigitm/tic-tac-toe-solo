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
  puts control.turn_prompter(name_1, name_2)
  9.times do
    puts "Pick any number between 1 to 9" 
    control.input_checker(input = gets.chomp)
    view.display_board(input)
    control.turn_switcher(input)
    puts control.turn_prompter(name_1, name_2)
  end

=begin
puts "Game Over Win!"
puts "Game Over Draw!"
=end
