RSpec.describe 'before and after hooks' do
  # It run before the describe method
  before(:context) do
    puts "Before Context"
  end

  # It run after the describe method
  after(:context) do
    puts "After Context"
  end

  # It run before the "it" method
  before(:example) do
    puts "Before example"
  end

  # It run after the "it" method
  after(:example) do
    puts "After example"
  end

  it 'just a random example' do
    puts "just a random example"
  end

  it 'just another random example' do
    puts "just another random example"
  end
end