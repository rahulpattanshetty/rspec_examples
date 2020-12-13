# falsy -> false , nil
# truthy -> everything else

RSpec.describe "be matcher" do
  it 'can test truthy values' do
    expect(true).to be_truthy
    expect("hell").to be_truthy
    expect(0).to be_truthy
    expect(-1).to be_truthy
    expect([]).to be_truthy
    expect({}).to be_truthy
  end

  it 'can test for falsy values' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end

  it 'can test for nil' do
    expect(nil).to be_nil
  end

end