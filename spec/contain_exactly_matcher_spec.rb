RSpec.describe 'contain exactly matcher' do
  subject { [1,2,3] }

  # It checks for the presence of the elements in the value passed and doesn't care about the order of an array

  describe 'long form syntax' do
    it 'should checks for the presence of elements in an array' do
      expect(subject).to contain_exactly(1,2,3)
      expect(subject).to contain_exactly(2,3,1)
      expect(subject).to contain_exactly(3,1,2)

      # expect(subject).to contain_exactly(1,2) -> raise an failure
      # expect(subject).to contain_exactly(1,2,3,4) -> raise an failure
    end
  end

  it { is_expected.to contain_exactly(1,2,3) }
  it { is_expected.to contain_exactly(3,1,2) }

end