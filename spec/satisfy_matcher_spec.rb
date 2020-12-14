RSpec.describe 'satisfy matcher' do
  subject { "racecar" }

  it 'is a palindrome' do
    expect(subject).to satisfy { |value| value == value.reverse }
  end

  it 'can accept custom error message' do
    expect(subject).to satisfy("to be palindrome") do |value|
      value == value.reverse
    end
  end
end