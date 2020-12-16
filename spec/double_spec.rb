RSpec.describe 'a random double' do
  it 'only allows defined method to be invoked' do
    # stuntman = double("Mr. Danger", fall_off_ladder: "Ouch", light_on_fire: true)
    # expect(stuntman.fall_off_ladder).to eq("Ouch")
    # expect(stuntman.light_on_fire).to eq(true)

    # stuntman = double("Mr Danger")
    # allow(stuntman).to receive(:fall_of_ladder)
    # expect(stuntman.fall_of_ladder).to be_nil
    
    # allow(stuntman).to receive(:fall_of_ladder).and_return("Ouch")
    # expect(stuntman.fall_of_ladder).to eq('Ouch')

    stuntman = double("Mr Danger")
    allow(stuntman).to receive_messages(fall_off_ladder: "Ouch", light_on_fire: true)
    expect(stuntman.fall_off_ladder).to eq("Ouch")
    expect(stuntman.light_on_fire).to eql(true)
  end
end