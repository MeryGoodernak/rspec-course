# frozen_string_literal: true

RSpec.describe 'change matcher' do
  subject { [1, 2, 3] }
  it 'check a method changes object state' do
    expect { subject.push(4) }.to change { subject.length }.from(3).to(4)
  end
end
