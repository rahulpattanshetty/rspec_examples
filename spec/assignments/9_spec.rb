# 1) Write a compound expectation that asserts the string firetruck starts with the substring "fire" and ends with the substring "truck".

RSpec.describe "compound expectation" do
  describe 'firetruck' do
    it 'should start with fire and end with truck' do
      expect(subject).to start_with("fire").and end_with("truck")
    end
  end
end

# 2) Write a compound expectation that asserts that the number 20 is even and that it responds to the times mthod.
 
RSpec.describe 20 do
  it 'should be an even number and respond to times method' do
    expect(subject).to be_even.and respond_to(:times)
  end
end

# 3) Write a compound expectation that asserts that the array [4, 8, 15, 16, 23, 42] includes the value 42 and starts with the values 4, 8, and 15.

RSpec.describe [4, 8, 15, 16, 23, 42] do
  it 'includes the value 42 and expected to start with passed values' do
    expect(subject).to include(42).and start_with(4,8,15)
  end
end