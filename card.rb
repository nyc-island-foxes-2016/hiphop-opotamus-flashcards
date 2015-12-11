class Card
  attr_reader :question, :answer

  def initialize(args = {})
    @question = args.fetch(:question, "")
    @answer = args.fetch(:answer, "")
  end

  def display_question
    "Definition #{@question}"
  end

  def display_answer
    "#{@answer}"
  end

end
