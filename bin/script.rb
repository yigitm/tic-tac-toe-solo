#!/usr/bin/env ruby
class UserInterface

names = Array.new(2)
turn_counter = 9
selections = [[],[]]

  names.length.times do 
  puts "Please type your Name & Press enter"
  names << gets.chomp
  end

  turn_counter.times do
  puts "Select a number from board"
  selections << gets.chomp
  end
puts "Board"
puts "Display current player turn"
puts "Display choice with 'X' & 'O' "
puts "Invalid Move"
puts "Game Over Win!"
puts "Game Over Draw!"
   

end

start = UserInterface.new