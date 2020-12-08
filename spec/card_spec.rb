RSpec.describe "Card" do
  
  it "has a type" do
    card = Card.new("Ace of shades")
    expect(card.type).to eq("Ace of shades")
  end

end