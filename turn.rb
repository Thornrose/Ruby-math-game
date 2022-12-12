# turn class handling question logic
class Turn
  def initialize
    @count = 0
  end

  def question(player)
    num1 = rand(1..20)
    num2 = rand(1..20)
    correct = num1 + num2
    puts "#{player}: What does #{num1} plus #{num2} equal?"
    print '> '
    player_answer = $stdin.gets.chomp.to_i
    if player_answer == correct
      puts "#{player}: You got it!"
      true
    else
      puts "#{player}: Nope, sorry!"
      false
    end
  end

  def increment_turns
    @count += 1
  end

  def count
    @count
  end
end
