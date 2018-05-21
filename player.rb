class Player
  attr_reader :player_number
  attr_accessor :lives

  def initialize (player_number)
    @player_number = player_number
    @lives = 3
  end

  def deduct_life
    @lives -= 1
  end

  def is_alive?
    @lives > 0
  end
end