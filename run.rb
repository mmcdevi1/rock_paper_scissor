# RPS is a game between 2 players. Both players pick a hand of either rock paper or scissors.
# Then, the two hands are compared and it's either a tie.
require './human.rb'
require './computer.rb'

class Game
  attr_accessor :player, :computer

  CHOICES = {'r' => 'rock', 'p' => 'paper', 's' => 'scissors'}

  def initialize
    @player   = Human.new("Mike")
    @computer = Computer.new("R2D2")
    play
  end

  def compare_hands
    if player.hand == computer.hand
      puts "It's a tie."
    elsif player.hand > computer.hand 
      puts "You win!"
    else 
      puts "You lose!"
    end
  end

  def play
    loop do 
      player.pick_hand
      computer.pick_hand
      compare_hands

      puts player 
      puts computer
    end
  end
end

game = Game.new
game
