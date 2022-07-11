# frozen_string_literal: true

require 'card'

RSpec.describe Card do
  let(:card) { Card.new('Aces', 'Spades') }

  it 'has a rank' do
    expect(card.rank).to eq('Aces')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end
end
