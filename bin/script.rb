#!/usr/bin/env ruby
require_relative '../lib/board.rb'
require_relative '../lib/game.rb'
name_1 = Control.new
name_2 = Control.new
view = View.new

  puts "Please type first player name"
  name_1 = gets.chomp
  puts "Please type second player name"
  name_2 = gets.chomp

  view.print_update
  9.times do  
  puts "Pick any number from 1 to 9 \n"
  view.update_board(input = gets.chomp)
  end

=begin  
puts "Display current player turn"
puts "Invalid Move"
puts "Game Over Win!"
puts "Game Over Draw!"
=end

