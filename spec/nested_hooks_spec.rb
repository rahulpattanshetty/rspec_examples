RSpec.describe "nested hooks" do

  before(:context) do
    puts "Outer before context"
  end

  # It will be applicable in entire scope. 
  # Treated as Global i.e every example are running inside this scope will be this before example
  # In current example it will run two times (applicable to nested blocks)
  before(:example) do
    puts "Outer before example"
  end

  it 'do basic math' do
    expect(1+1).to eq(2)
  end

  context 'nested examples' do
    before(:context) do
      puts "Inner before context"
    end

    before(:example) do
      puts "Inner before example"
    end

    it "should do subtraction" do
      expect(1-1).to eq(0)
    end

  end

end

#RESULT:-
# Outer before context
# Outer before example
# .Inner before context
# Outer before example
# Inner before example
# .