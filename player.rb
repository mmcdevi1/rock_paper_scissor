class Player
  attr_accessor :name, :hand

  def initialize(name)
    @name = name
  end

  def to_s
    "#{name} currently has a choice of #{self.hand.value}"
  end
end