RSpec.describe 'nested hooks' do
  before(:context) do
    puts 'OUTER Before context.'
  end

  before(:example) do
    puts 'OUTER Before example.'
  end

  after(:context) do
    puts 'OUTER After context.'
  end

  after(:example) do
    puts 'OUTER After example.'
  end

  it 'should do some math' do
    expect(2 + 2).to eq(4)
  end

  context 'With condition A' do
    before(:context) do
      puts 'INNER Before context.'
    end

    before(:example) do
      puts 'INNER Before example.'
    end

    after(:context) do
      puts 'INNER After context.'
    end

    after(:example) do
      puts 'INNER After example.'
    end

    it 'should do some basic math' do
      expect(2 + 2).to eq(4)
    end

    it 'should do subtraction as well' do
      expect(2 + 2).to eq(4)
    end
  end
end
