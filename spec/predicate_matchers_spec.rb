# frozen_string_literal: true

RSpec.describe 'predicate matchers' do

  it 'can be tested with the predicate matchers' do
    expect(16.even?).to eq(true)
  end
end
