


class Game
attr_reader :guesses_left
  def initialize answer: nil
    @guesses_left = 6
    @answer = ("cat").chars
    @correct_letters = []
    @incorrect_letters = []
  end

  def game_won?
    @answer.all? do |g|
      @correct_letters.include?(g)
      end
  end

  def game_over?
    @guesses_left == 0 || game_won?
  end

  def check_guess guessed_answer
    if @answer.include? (guessed_answer)
      @correct_letters.push (guessed_answer)
    else @incorrect_letters.push (guessed_answer)
      @guesses_left -= 1
    end
  end




end
