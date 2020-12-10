class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
end

RSpec.describe King do
  
  subject { described_class.new("Ashoka") }
  let(:louis) { described_class.new("Louis") }

  it 'represents great person' do
    expect(subject.name).to eq("Ashoka")
    expect(louis.name).to eq("Louis")
  end

end