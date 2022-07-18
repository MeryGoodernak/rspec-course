# frozen_string_literal: true

RSpec.describe 'predicate matchers' do

  it 'can be tested with the predicate matchers' do
    expect(16.even?).to eq(true)
    expect(16).to be_even
    expect(17).to be_odd
    expect([]).to be_empty
    expect({}).to be_empty
  end

  it { is_expected.to start_with 'predicate' }

  describe 0 do
    it { is_expected.to be_zero }
  end
end
