require 'movie'
RSpec.describe Movie do
  let(:stuntman) { double('Mr. Danger', ready?: true, act: 'some string', fall_in_fire: 'some string', fall_off_ladder: false) }
  subject { described_class.new(stuntman) }

  describe '#start_shooting method' do
    it 'expects an actor to do 3 sections' do
      expect(stuntman).to receive(:ready?)
      expect(stuntman).to receive(:act)
      expect(stuntman).to receive(:fall_in_fire)
      expect(stuntman).to receive(:fall_off_ladder)
      subject.start_shooting
    end
  end
end
