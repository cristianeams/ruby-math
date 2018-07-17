class Player
  attr_accessor :name, :lives
  def initialize(name)
    @name = name
    @lives = 3 #both players start with 3 lives
  end

  def is_alive?
    @lives > 0 # returns true if yes
  end
end