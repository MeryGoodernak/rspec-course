# frozen_string_literal: true

RSpec.describe 'contain_exactly matcher' do
  subject { [1, 2, 3] }

  it { is_expected.to contain_exactly(2, 3, 1)}
end
