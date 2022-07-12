# frozen_string_litaral: true

require 'king'

RSpec.describe King do
  subject(:louis) { described_class.new('Louis')}
  let(:bob) { described_class.new('Bob')}

  it 'represent a great person' do
    expect(louis.name).to eq('Louis')
    expect(bob.name).to eq('Bob')
  end
end
