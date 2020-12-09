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
  # def card
  #   Card.new("Ace","Shades")
  # end

  # Memoryization:- End of the day it works like a caching. Computer will figure it once and refer you back to the first computational result whenever called. (So it basically refere to the let method)
  # Let method will act as new method for every examples but if it is called more than one time in an example then it only refers to computation that is made for the first time and return you the result by referring it.
  # let method will act as "Lazy loading" because it is initialized when it is called.
  let(:card) { Card.new("Ace","Shades") }
  # let(:x) { 1 + 1 }
  # let(:y) { x + 1 }
  # let!(:card) { Card.new("Ace","Shades") } # let with bang will act before hook

  it "has a rank" do
    expect(card.rank).to eq("Ace")
  end

  it "has a suit" do
    expect(card.suit).to eq("Shades")
  end

  it "has a custom error message" do
    comparsion = "Shade"
    # expect method accept two parameter, one is matcher and other one is error message
    expect(card.suit).to eq(comparsion), "Hey, expected #{comparsion} but got #{card.suit}"
  end
end