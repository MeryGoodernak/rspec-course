RSpec.describe 'Card' do
  it 'hase a type' do
    card = Card.new('spades')
    expect(card.type).to eq('spades')
  end
end
