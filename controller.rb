require_relative 'view'
require_relative 'deck'
require_relative 'txtable'

class Controller
  include Txtable

  def initialize(file_path)
    file_pairs = generate_line_pairs_from_txt(file_path)
    @game = Deck.new(convert_file_pairs_to_hashes(file_pairs))
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

  def convert_file_pairs_to_hashes(file_pairs)
    file_pairs.map do |pair|
      [:question, :answer].zip(pair).to_h
    end
  end

end
