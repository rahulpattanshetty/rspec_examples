RSpec.describe "all matcher" do
  it 'allows for aggregate method' do
    # [1,3,5].each do |val|
    #   expect(val).to be_odd
    # end

    expect([1,3,5]).to all(be_odd)
    expect([2,4]).to all(be_even)
    expect([ [], [] ]).to all(be_empty)
    expect([1,4,6]).to all(be < 9)
  end

  describe [1,5,9] do
    it { is_expected.to all(be < 10) }
  end
end