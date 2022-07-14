RSpec.describe 'comprison matchers' do
  it 'allows for comparison with built-in Ruby operators' do
    expect(10).to be > 9
    expect(11).to be < 30

    expect(22).to be >= 22
    expect(22).to be >= 21

    expect(2).to be <= 2
    expect(22).to be <= 23

    expect(22).not_to be > 23
  end

  describe 100 do
    it { is_expected.to be > 90 }
    it { is_expected.to be < 900 }
    it { is_expected.to be >= 100 }
    it { is_expected.to be <= 100 }
    it { is_expected.not_to be < 90 }
  end
end
