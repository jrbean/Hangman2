


class Game
attr_reader :guesses_left, :correct_letters, :board
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

  def check_guess guess
    if @answer.include? (guess)
      @correct_letters.push (guess)
    else
      @incorrect_letters.push (guess)
      @guesses_left -= 1
    end
  end

  def draw_board
    @board = []
    @answer.each do |letter|
      if @correct_letters.include? letter
        @board.push letter + " "
      else
        @board.push "_ "
      end
    end
    @board.join
  end

end
