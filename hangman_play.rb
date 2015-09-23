require "./hangman_game"

g = Game.new
puts "Solve the word before you run out of time."
puts "Your word."
#need to get a board

until g.game_over?
  puts "You have #{g.guesses_left} guesses left."
  puts "Guess a letter."
  guess = gets.chomp.downcase
  g.check_guess guess
end

g.game_won? puts "You're the hero!"
g.game_over? puts "Game Over"
