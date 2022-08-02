RSpec.describe 'allow method' do
  it 'will consider nil as a default return value without pairing with an and_return method' do
    calculator = double
    allow(calculator).to receive(:add)
    expect(calculator.add).to be_nil
  end
end
