class Question

  def initialize
    @first_number = Random.rand(1...20)
    @second_number = Random.rand(1...20)
  end

  def ask
    "What does #{@first_number} plus #{@second_number} equal?"
  end

  def right_answer
    @first_number + @second_number
  end

end

