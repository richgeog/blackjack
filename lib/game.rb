class Game
  attr_reader :cards, :player, :shuffled_cards

  def initialize
    @cards = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    @player = []
    @shuffled_cards = []
  end

  def shuffle
    @shuffled_cards = cards.shuffle
  end
end
