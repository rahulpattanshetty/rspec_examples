RSpec.describe 'equality matchers' do
  
  let(:a) { 3.0 }
  let(:b) { 3 }

  # check the values and ignores the type
  describe 'eq matcher' do
    it 'tests for the values and ignores the type' do
      expect(a).to eq(3)
      expect(a).to eq(3.0)
      expect(a).to eq(b)
    end
  end

  describe 'eql matcher' do
    it 'tests for the values including same type' do
      expect(a).to eql(3.0)
      expect(a).not_to eql(b)
      expect(b).to eql(3)
      expect(b).not_to eql(a)
    end
  end

  describe 'equal and be matcher' do
    let(:c) { [1,2,3] }
    let(:d) { [1,2,3] }
    let(:e) { c }

    it 'checks the identity' do
      expect(c).to eq(d)  
      expect(c).to eql(d)

      expect(e).to equal(c)
      expect(e).to be(c)
      
      expect(e).not_to equal(d)
      # be is an alias for equal
      expect(e).not_to be(d)
    end
  end

end