RSpec.describe "comparsioni matcher" do
  it 'allows to compare with the built-in ruby method' do
    expect(10).to be > 5
    expect(8).to be < 15
    expect(25).to be >= 20
    expect(9).to be <= 9
  end
  
  describe 100 do
    it { is_expected.to be > 90 }
    it { is_expected.to be >= 100 }
    it { is_expected.to be < 110 }
    it { is_expected.to be <= 100 }
  end

end