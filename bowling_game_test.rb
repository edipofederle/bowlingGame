require "test/unit"
require "Game.rb"

class BowlingGame < Test::Unit::TestCase

  def testOne
    game = Game.new
    game.roll(0)
    assert game.score == 0
  end

  def testGameRoll1Pins5
    game = Game.new
    20.times do |i|
      game.roll(0)
    end
    assert game.score == 0
  end

  def testGame4
    game = Game.new
    game.roll(1)
    game.roll(3)
    assert game.score == 4
  end

  def testSpare
    game = Game.new
    game.roll(5)
    game.roll(5) #spare
    game.roll(3)
    assert_equal(16, game.score)
  end

  def testStrick
    game = Game.new
    game.roll(10) #strick
    game.roll(3)
    game.roll(4)
    assert_equal(24, game.score)
  end
end