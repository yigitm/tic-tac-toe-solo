#!/usr/bin/env ruby
require_relative '../lib/board.rb'
require_relative '../lib/game.rb'

view = View.new
picks = View.new
names = Control.new
names = []
picks = []

  2.times do 
  puts "Please type your Name"
  names << gets.chomp
  end
  puts "Pick any number from the board"
  view.board
  3.times do
  picks << gets.chomp
  view.board
  end
  p picks
  
=begin  
puts "Display current player turn"
puts "Display choice with 'X' & 'O' "
puts "Invalid Move"
puts "Game Over Win!"
puts "Game Over Draw!"
=end



