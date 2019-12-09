class Player
  attr_accessor :name, :score

  def initialize(name)
    @name = name
    @score = 3
  end

  def score_update
    @score -= 1
  end

  def score_show
    @score
  end
end