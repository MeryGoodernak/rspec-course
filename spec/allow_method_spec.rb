RSpec.describe 'allow method' do
  it 'will consider nil as a default return value without pairing with an and_return method' do
    calculator = double
    allow(calculator).to receive(:add)
    expect(calculator.add).to be_nil
  end

  it 'can customize return value for methods on double no matter how many argument the method takes' do
    calculator = double
    allow(calculator).to receive(:add).and_return(15)
    expect(calculator.add).to eq(15)
    expect(calculator.add(2)).to eq(15)
    expect(calculator.add(3, 6)).to eq(15)
    expect(calculator.add('hello')).to eq(15)
  end

  it 'can stub one or more methods on a real object' do
    arr = [1, 2, 3]
    allow(arr).to receive(:sum).and_return(10)
    expect(arr.sum).to eq(10)

    arr.push(4)
    expect(arr).to eq([1, 2, 3, 4])
  end

  it 'can return multiple return values in sequence' do
    arr = [:a, :b, :c]
    allow(arr).to receive(pop).and_return(:c, :b, :a, nil)
    expect(arr.pop).to eq(:c)
    expect(arr.pop).to eq(:b)
    expect(arr.pop).to eq(:a)
    expect(arr.pop).to be_nil
    expect(arr.pop).to be_nil

  end
end
