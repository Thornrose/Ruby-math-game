# top-level game class
class Game
  attr_accessor :player1, :player2

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    play
  end

  def play
    players = [player1, player2]
    player = players[0]

    turn = Turn.new
    while player1.score != 0 && player2.score != 0
        puts '----- NEW TURN -----' unless turn.count == 0
      
      if !turn.question(player.name)
        player.score -= 1
      end

      puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3"
      player == players[0] ? player = players[1] : player = players[0]
      turn.increment_turns
    end

    puts "#{player.name} wins with a score of #{player.score}/3"
    puts '----- GAME OVER -----'
    puts 'Good bye!'
  end
end
