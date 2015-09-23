require "./hangman_game"
require "pry"

g = Game.new
puts "Solve the word before they hang the guy."
puts g.draw_board

until g.game_over?
  puts "You have #{g.guesses_left} guesses left."
  puts "Guess a letter."
  puts g.draw_board
  guess = gets.chomp.downcase
  g.check_guess guess
end

puts "Game Over"
puts g.draw_board
