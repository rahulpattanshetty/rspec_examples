class Card
  attr_reader :rank, :suit

  def initialize(rank,suit)
    @rank = rank
    @suit = suit
  end

end

RSpec.describe "Card" do

  # Hooks are a piece of code that automatically executes at a specific time during the test case excution.
  # before hook is used run at the start and after hook is used to run at the end of the example execution.
  # before do
  #   @card = Card.new("Ace","Shades")
  # end

  # Custom method which can be called inside the "it" block
  def card
    Card.new("Ace","Shades")
  end

  it "has a rank" do
    expect(card.rank).to eq("Ace")
  end

  it "has a suit" do
    expect(card.suit).to eq("Shades")
  end

end