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
  it { is_expected.to end_with 'chers' }

  describe 0 do
    it { is_expected.to be_zero }
  end

  describe [:a, :b, :c] do
    it { is_expected.to start_with(:a) }
    it { is_expected.to start_with(:a, :b) }
    it { is_expected.to end_with(:c) }
    it { is_expected.to end_with(:b, :c) }
  end
end
