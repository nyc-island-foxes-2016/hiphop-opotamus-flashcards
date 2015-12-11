class Deck
  attr_reader :deck, :empty

  def initialize
    @deck = []
    @empty = false
  end

  def draw_card #shuffles deck and returns/removes the last card
    @deck.shuffle.pop
  end

  def empty?
    @deck.length == 0
  end

end
