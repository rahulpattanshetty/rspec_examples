RSpec.describe 'start_with and end_with matcher' do
   
  describe 'catepillar' do
    it 'should checks the substring at the beginning or end' do
      expect(subject).to start_with("cat")
      expect(subject).to end_with("pillar")

      # expect(subject).to start_with("Cat") -> failure case
    end

    it { is_expected.to start_with("cat") }
    it { is_expected.to end_with("pillar") }
  end

  describe [:a, :b, :c, :d] do
    it 'should check for elements at beginning or end' do
      expect(subject).to start_with(:a,:b)
      expect(subject).to end_with(:c,:d)
    end

    it { is_expected.to start_with(:a) }
    it { is_expected.to end_with(:d) }
  end
end