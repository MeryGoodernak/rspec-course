RSpec.describe 'double' do
  context 'first edition' do
    it 'allows defined method to be invoked' do
      stuntman = double('Mr. Danger', fall_in_fire: 'Ouch', jump_on_fire: true)
      expect(stuntman.fall_in_fire).to eq('Ouch')
      expect(stuntman.jump_on_fire).to be true
    end
  end

  context 'second edition' do
    it 'allows defined method to be invoked-second edition' do
      stuntman = double('Mr. Danger')
      allow(stuntman).to receive(:fall_in_fire).and_return('Ouch')
      expect(stuntman.fall_in_fire).to eq('Ouch')
    end
  end
end
