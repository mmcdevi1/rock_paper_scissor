require './player.rb'
require './hand.rb'

class Human < Player
  def pick_hand
    begin
      print "Choose Rock, Paper or Scissors (r, p, s): "
      c = gets.chomp.downcase
    end until Game::CHOICES.keys.include?(c)

    self.hand = Hand.new(c)
  end
end