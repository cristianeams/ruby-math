class Question
  attr_accessor :answer, :show
  def initialize()
    @number1 = rand(1...20) # Ruby's pseudo-random number generator
    @number2 = rand(1...20)
    @answer = @number1 + @number2
    @show = "What does #{@number1} ➕  #{@number2} equal?"
  end
end