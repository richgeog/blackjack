require 'game'

describe Game do
  subject(:game) { described_class.new }

  it 'has a pack of cards' do
    expect(game.cards).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
  end

  it 'has a player' do
    expect(subject.player).to be_empty
  end

  it 'shuffled cards initializes empty' do
    expect(game.shuffled_cards).to be_empty
  end

  it 'shuffles the cards' do
    allow_any_instance_of(Game).to receive(:shuffle).and_return([7, 5, 4, 1, 6, 8, 9, 10, 3, 2])
    expect(game.shuffle).to eq([7, 5, 4, 1, 6, 8, 9, 10, 3, 2])
  end
end
