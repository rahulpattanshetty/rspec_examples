
RSpec.describe "predicate methods and predicate matchers" do
  it 'can be tested with ruby methods' do
    result = 16/2
    expect(result.even?).to eq(true)
  end

  it 'can be tested with predicate matchers' do
    # even? odd? empty? zero? - strip the question mark and attach be to it 
    expect(6).to be_even
    expect(5).to be_odd
    expect(0).to be_zero
    expect([]).to be_empty
  end

  describe 0 do
    it { is_expected.to be_zero }
  end
end