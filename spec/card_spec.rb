# frozen_string_literal: true

require 'card'

RSpec.describe Card do
  it 'hase a rank' do
    card = Card.new('aces', 'spades')
    expect(card.rank).to eq('aces')
  end
  it 'hase a suit' do
    card = Card.new('aces', 'spades')
    expect(card.suit).to eq('spades')
  end
end
