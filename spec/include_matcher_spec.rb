# frozen_string_literal: true

RSpec.describe 'include matcher' do
  context 'hello world!' do
    it 'checks for substring inclusion' do
      expect(subject).to include('world')
      expect(subject).to include('!')
    end

    it { is_expected.to include('hel') }
    it { is_expected.to include('lo') }
  end

  context [20, 10, 30] do
    it 'checks for inclusion in the array, regardless of order' do
      expect(subject).to include(30)
      expect(subject).to include(30, 10)
    end

    it { is_expected.to include(10) }
    it { is_expected.to include(10, 20) }
  end

  context ({a: 1, b: 2, c: 'three'}) do
    it 'checks for key existence' do
      expect(subject).to include(:a)
      expect(subject).to include(:c, :b)
    end

    it { is_expected.to include(:c) }
    it { is_expected.to include(:b, :a) }

    it 'checks for key-value pair' do
      expect(subject).to include(a: 1)
      expect(subject).to include(c: 'three', b: 2)
    end

    it { is_expected.to include(a: 1) }
  end
end
