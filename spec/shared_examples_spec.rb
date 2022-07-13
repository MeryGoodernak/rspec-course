RSpec.describe Hash do
  subject { {a: 1, b: 2, c: 3} }
end

RSpec.describe Array do
  subject { [1, 2, 3] }
end

RSpec.describe String do
  subject { 'abc' }
end


class TestClass
  def length
    3
  end
end

RSpec.describe TestClass do
end
