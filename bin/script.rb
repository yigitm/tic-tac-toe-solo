#!/usr/bin/env ruby
require_relative '../lib/board.rb'
require_relative '../lib/game.rb'
name_1 = Control.new
name_2 = Control.new
board = View.new
picks = View.new

  puts "Please type first player name"
  name_1 = gets.chomp
  puts "Please type second player name"
  name_2 = gets.chomp

  picks.view_board
  3.times do  
  puts "Pick any number from 1 to 9"
  picks.view_board(input = gets.chomp)
  end

=begin  
puts "Display current player turn"
puts "Display choice with 'X' & 'O' "
puts "Invalid Move"
puts "Game Over Win!"
puts "Game Over Draw!"
=end



