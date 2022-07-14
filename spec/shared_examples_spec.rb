RSpec.shared_examples 'a Ruby object with a length of three' do
  it 'should be 3 in length' do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Hash do
  subject { {a: 1, b: 2, c: 3} }
  include_examples 'a Ruby object with a length of three'
end

RSpec.describe Array do
  subject { [1, 2, 3] }
  include_examples 'a Ruby object with a length of three'
end

RSpec.describe String do
  subject { 'abc' }
  include_examples 'a Ruby object with a length of three'
end


class TestClass
  def length
    3
  end
end

RSpec.describe TestClass do
  include_examples 'a Ruby object with a length of three'
end
