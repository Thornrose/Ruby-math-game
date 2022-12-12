# player class handling scorekeeping
class Player
  attr_accessor :score
  attr_reader :name

  def initialize(name)
    @name = name
    self.score = 3
  end
end
