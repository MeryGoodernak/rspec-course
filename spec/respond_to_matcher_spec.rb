# frozen_string_literal: true

require 'hot_chocolate'

RSpec.describe HotChocolate do
  it 'confirms that an object can respond to a method' do
    expect(subject).to respond_to(:discard)
    expect(subject).to respond_to(:drink, :purchase)
  end

  it { is_expected.to respond_to(:purchase) }

  it 'confirms that an object can respond to a method with arguments' do
    expect(subject).to respond_to(:purchase).with(1).arguments
  end

  it { is_expected.to respond_to(:purchase).with(1).arguments }
end
