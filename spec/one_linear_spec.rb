RSpec.describe "shorthand syntax" do
  subject { 5 }

  context 'classic syntax' do
    it 'should return 5' do
      expect(subject).to eq(5)
    end
  end

  # is_expected directly refer to subject. Instead of using subject can is_expected
  context 'with one linear' do
    it { is_expected.to eq(5) }
  end

end