require_relative 'view'
class Controller

  def initialize
    # @game = Deck.new
    @view = View.new
    run_interface
  end

  def run_interface
    input = ""
    @view.display_welcome_message
    until input == "exit"
      @view.display("This is a flash card definition")
      input = @view.get_input
      if input == "right"
        @view.display("Correct!")
        #display next card
      elsif input == "wrong"
        @view.display("Try again.")
        input = @view.get_input
      end
    end
    @view.display("Bye!")
  end

end

test = Controller.new
