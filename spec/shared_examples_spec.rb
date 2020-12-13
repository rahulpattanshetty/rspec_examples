# shared examples can be used across multiple example groups
# subject inside shared example will be lazy loaded it refer to a called example described class
# the include_examples injects predefined example into example group
RSpec.shared_examples "Ruby object which returns length" do
  it 'should return the length of an object' do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Array do
  subject { [1,2,3] }
  include_examples "Ruby object which returns length"
end

RSpec.describe Hash do
  subject { {a:1, b:2, c:3} }
  include_examples "Ruby object which returns length"
end

RSpec.describe String do
  subject { "abc"}
  include_examples "Ruby object which returns length"
end

class SausageLink
  def length
    3
  end
end

RSpec.describe SausageLink do
  include_examples "Ruby object which returns length"
end