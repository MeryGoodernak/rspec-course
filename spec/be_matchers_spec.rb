# frozen_string_literal: true

RSpec.describe 'be truthy or falsy matchers' do
  it 'test the truthiness' do
    expect(5).to be_truthy
  end
end
