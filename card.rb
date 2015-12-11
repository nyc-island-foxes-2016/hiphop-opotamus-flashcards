class Card
  attr_reader :question, :answer

  def initialize
    @question
    @answer
  end

  def display_question
    "Definition #{@question}"
  end

  def display_answer
    "#{@answer}"
  end

end
