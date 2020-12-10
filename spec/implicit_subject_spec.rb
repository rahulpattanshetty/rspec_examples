RSpec.describe Hash do

  # here subject is used as Hash. By default rspec provides the described class to be as subject
  
  it 'should start with emoty' do
    expect(subject.length).to eq(0)
    subject[:some_key] = "some key"
    expect(subject.length).to eq(1)
  end

  it 'isolated between the examples' do
    expect(subject.length).to eq(0)
  end

end