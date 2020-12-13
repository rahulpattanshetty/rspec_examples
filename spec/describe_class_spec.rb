class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
end

RSpec.describe King do
  
  # described_class method belongs to the class which is passed as block to a describe method
  # Advantage:- If there is any change in class that is passed to describe block then there is no 
  # need to change the entire behaviour of the tests

  subject { described_class.new("Ashoka") }
  let(:louis) { described_class.new("Louis") }

  it 'represents great person' do
    expect(subject.name).to eq("Ashoka")
    expect(louis.name).to eq("Louis")
  end

end