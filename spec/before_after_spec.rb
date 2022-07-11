# frozen_string_literal: true

RSpec.describe 'before and after hooks' do
  before(:context) do
    puts 'Start running the tests!'
  end

  after(:context) do
    puts 'End of the all examples!'
  end

  before(:example) do
    puts 'Hello before each example!'
  end

  after(:example) do
    puts 'Buy after each example!'
  end

  it 'is just a random example' do
    expect(5 * 4).to eq(20)
  end

  it 'is just another random example' do
    expect(15 / 3).to eq(5)
  end
end
