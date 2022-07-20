# frozen_string_literal: true

RSpec.describe 25 do
  it 'can test for multiple matchers' do
    expect(subject).to be_odd.and be > 20
  end

  it { is_expected.to be_odd.and be > 20 }
end

RSpec.describe 'caterpillar' do
  it { is_expected.to start_with('cat').and end_with('pillar') }
end

RSpec.describe [:a, :b, :c] do
  it 'can check fot multiple possibilities' do
    expect(subject.sample).to eq(:a).or eq(:b).or eq(:c)
  end
end
