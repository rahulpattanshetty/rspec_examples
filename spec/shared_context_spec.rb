# include_context injects the predefined context into example group
RSpec.shared_context 'common' do
  before do
    @foods = []
  end

  def some_helper
    5
  end

  let(:some_variable) { [1] }
end

RSpec.describe "first example group" do
  include_context "common"

  it 'can use the instance variable' do
    expect(@foods.length).to eq(0)
    @foods << "Soup"
    expect(@foods.length).to eq(1)
  end

  it 'another example with instance variable' do
    expect(@foods.length).to eq(0)
  end

  it 'can use helper method' do
    expect(some_helper).to eq(5)
  end
end

RSpec.describe 'Second example' do
  include_context "common"
  
  it 'can use let variables' do
    expect(some_variable).to eq([1])
  end
end