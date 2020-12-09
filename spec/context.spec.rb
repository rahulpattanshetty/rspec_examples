RSpec.describe "#even? method" do
  
  # it "should return true if number is even"
  # it "should return false if number is odd"

  # describe method can have multiple group of example that can describe 
  # describe "with even number" do
  #   it "should return true" do
  #     expect(4.even?).to eq(true)
  #   end
  # end

  # describe "with odd number" do
  #   it "should return false" do
  #     expect(5.even?).to eq(false)
  #   end
  # end

  # Context Method:- It is an alias to describe method, both are available to suit the purpose of the context
  context "with even number" do
    it "should return true" do
      expect(4.even?).to eq(true)
    end
  end

  context "with odd number" do
    it "should return false" do
      expect(5.even?).to eq(false)
    end
  end

end