class Card
  attr_reader :rank, :suit

  def initialize(rank,suit)
    @rank = rank
    @suit = suit
  end

end

RSpec.describe "Card" do

  it "has a rank" do
    card = Card.new("Ace", "Shades")
    expect(card.rank).to eq("Ace")
  end

  it "has a suit" do
    card = Card.new("Ace", "Shades")
    expect(card.suit).to eq("Shades")
  end

end