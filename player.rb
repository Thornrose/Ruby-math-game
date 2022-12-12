input1 = ARGV

class Player
  attr_accessor :score
  attr_reader :name

  def initialize(name)
    @name = name
    self.score = 3
  end

  def info
    puts "My name is #{name}!"
  end

end

player1 = Player.new(input1)

player1.info