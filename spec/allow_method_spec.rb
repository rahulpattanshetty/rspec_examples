RSpec.describe "allow method review" do
  it 'can customize return value for methods on doubles' do
    calc = double
    allow(calc).to receive(:add).and_return(10)

    expect(calc.add).to eq(10)
    # no matter the add passed with argument it always returnvalue which is specified in and_return method
    expect(calc.add(20)).to eq(10) 
    expect(calc.add("Hello")).to eq(10)
  end

  it 'can stub one or method on real object' do
    arr = [1,2,3]

    allow(arr).to receive(:sum).and_return(15)
    # it is pretended to have sum but it is not actually doing the real calculation
    expect(arr.sum).to eq(15)

    arr.push(4)
    expect(arr).to eq([1,2,3,4])
  end

  it 'can return multiple return values in sequence' do
    mock_array = double
    allow(mock_array).to receive(:pop).and_return(:c,:b,nil)
    expect(mock_array.pop).to eq(:c)
    expect(mock_array.pop).to eq(:b)
    expect(mock_array.pop).to be_nil
  end

end