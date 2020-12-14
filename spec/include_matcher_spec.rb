RSpec.describe 'include matcher' do
  describe 'hot chocolate' do
    it 'checks for substring inclusion' do
      expect(subject).to include("hot")
      expect(subject).to include("choc")
      expect(subject).to include("late")
    end

    it { is_expected.to include("hot") }
  end

  describe [1,2,3] do
    it 'checks for the inclusion in the array, regardless of order' do
      expect(subject).to include(1,2)
      expect(subject).to include(3)
    end

    it { is_expected.to include(2) }
  end

  describe ({a: 1, b:2, c:3}) do
    it 'checks for key existence' do
      expect(subject).to include(:a,:b)
      expect(subject).to include(:a)
    
      expect(subject).to include(a: 1)
    end

    it { is_expected.to include(b:2) }
    
  end

end