RSpec.describe 'not_to matcher' do
  it 'checks of inverse of a matcher' do
    expect(5).not_to eq(10)
    expect([1,2,3]).not_to equal([1,2,3])
    expect(2).not_to be_odd
    expect(5).not_to be_even
    expect([1,2]).not_to be_empty

    expect(nil).not_to be_truthy
    expect(1).not_to be_falsy

    expect("Chocolate").not_to start_with("hot")
    expect("catipillar").not_to end_wth("cat")

    expect(5).not_to respond_to(:length)

    expect([1,2]).not_to include(3)

    expect{ 11 / 3}.not_to raise_error(ZeroDivisionError)
    

  end
end