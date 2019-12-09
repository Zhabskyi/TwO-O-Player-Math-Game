class Question
  
  def get_number
    Random.rand(1...20)
  end

  def ask
    puts "What does #{self.get_number} plus #{self.get_number} equal?"
  end

end

