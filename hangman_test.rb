require "minitest/autorun"
require "minitest/reporters"
require "pry"

Minitest::Reporters.use!

require "./hangman_game"

class GameTest < Minitest::Test

  def test_turns_available
    g = Game.new
    assert_equal 6, g.guesses_left
  end

  def test_game_can_lose
    g = Game.new answer: "c"
    6.times { g.check_guess "d" }
    assert_equal 0, g.guesses_left
  end

  def test_game_can_win
    g = Game.new answer: ("cat").chars
    ["c", "a", "t"].each do |guess|
      g.check_guess guess
    end
    assert g.game_won?

    end

end
