class ProgrammingLanguage
  attr_reader :name

  def initialize(name = "Ruby")
    @name = name
  end
  
end

RSpec.describe ProgrammingLanguage do
  let(:language) { ProgrammingLanguage.new("Python") }

  it 'should store name of the language' do
    expect(language.name).to eq("Python")
  end

  context "with no arguments" do
    # It overrides the Global let method. 
    # If this is not declared then language will have python
    let(:language) { ProgrammingLanguage.new }

    it 'should default to Ruby as language' do
      expect(language.name).to eq("Ruby")
    end
  end

end