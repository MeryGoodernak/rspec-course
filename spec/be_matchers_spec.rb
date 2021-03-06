# frozen_string_literal: true

RSpec.describe 'be truthy or falsy matchers' do
  it 'test the truthiness' do
    expect(5).to be_truthy
    expect(0).to be_truthy
    expect('').to be_truthy
    expect([]).to be_truthy
    expect({}).to be_truthy
    expect(:symbol).to be_truthy
  end

  describe ['e'] do
    it { is_expected.to be_truthy }
  end

  it 'test the falsiness' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end

  describe nil do
    it { is_expected.to be_nil }
  end
end
