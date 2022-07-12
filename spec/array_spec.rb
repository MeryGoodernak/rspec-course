# frozen_string_literal: true

RSpec.describe Array do
  it 'should have zero initial length' do
    expect(subject.length).to eq(0)
  end

  it 'should be isolated between examples' do
    puts subject
    subject << 'Hello'
    subject << 'Goodbye'
    puts subject
    expect(subject.length).to eq(2)
  end
end
