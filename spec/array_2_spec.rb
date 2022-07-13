# frozen_string_literal: true

RSpec.describe Array do
  subject(:sally) do
    %w[a b]
  end

  it 'caches the object within an example' do
    expect(sally.length).to eq(2)
    subject.pop
    expect(sally.length).to eq(1)
  end

  it 'creates a new object for a new example' do
    expect(sally).to eq(%w[a b])
  end
end
