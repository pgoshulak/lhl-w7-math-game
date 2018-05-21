class Question
  attr_reader :number_a, :number_b, :sum
  MAX_NUMBER = 20

  def initialize
    @number_a = rand(MAX_NUMBER) + 1
    @number_b = rand(MAX_NUMBER) + 1
    @sum = @number_a + @number_b
  end

end