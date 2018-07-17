class Player
  attr_accessor :lives
  def initialize (lives = 3) #both players start with 3 lives
    @lives = lives 
  end

  def is_alive?
    @lives > 0 # returns true if yes
  end
end