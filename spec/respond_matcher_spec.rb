class HotChocolate

  def drink
    "Delicious"
  end

  def discard
    "Plop"
  end

  def purchase(number)
    "Awesome, I justed purchase #{number} more hot chocolate beverages"
  end
  
end

RSpec.describe HotChocolate do
  it 'confirms that an object respond to a method' do
    expect(subject).to respond_to(:drink,:discard)
    expect(subject).to respond_to(:purchase)
  end

  it 'confirm an object can respond to a method with arguments' do
    expect(subject).to respond_to(:purchase)
    # expect(subject).to respond_to(:purchase).with(5).arguments
  end

  it { is_expected.to respond_to(:purchase, :discard) }
  it { is_expected.to respond_to(:purchase).with(1).arguments }
end