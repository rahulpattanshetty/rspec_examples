#Chaining the methods is compound matchers

RSpec.describe 25 do
  it 'can tests for multiple matchers' do
    expect(subject).to be_odd.and be > 20
  end

  it { is_expected.to be_odd and be > 20 }
end

RSpec.describe 'Caterpillar' do
  it 'support muliple matchers on a single line' do
    expect(subject).to start_with("Cat").and end_with("pillar")
  end

  it { is_expected.to start_with("Cat").and end_with("pillar") }
end

RSpec.describe [:usa, :india, :canada] do
  it 'can check for multiple possibilites' do
    expect(subject.sample).to eq(:usa).or eq(:canada).or eq(:india)
  end
end