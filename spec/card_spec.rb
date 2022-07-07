# frozen_string_literal: true

require 'card'

RSpec.describe Card do
  before do
    @card = Card.new('aces', 'spades')
  end
  it 'hase a rank' do
    expect(@card.rank).to eq('aces')
  end
  it 'hase a suit' do
    expect(@card.suit).to eq('spades')
  end
end
