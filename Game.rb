class Game

  attr_accessor :points, :current, :rolls

  def initialize
    @points = 0
    @current = 0
    @rolls = Array.new(21, 0)
  end

  def score
    total = 0
    index = 1
    10.times do
      if is_a_strick index
        total += 10 + @rolls[index + 1] + @rolls[index + 2]
        index +=1
      end
      if is_a_spare index
        total += 10 + @rolls[index + 2]
        index +=2
      else
        total += rolls[index]
        index +=1
      end
    end
    total
  end

  def roll(pins)
    @rolls[@current+=1] += pins
  end

  private

  def is_a_strick(index)
    @rolls[index] == 10
  end

  def is_a_spare index
    @rolls[index] + @rolls[index+1] == 10
  end

end