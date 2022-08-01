RSpec.describe 'double' do
  context 'first edition' do
    it 'allows defined methods to be invoked' do
      stuntman = double('Mr. Danger', fall_in_fire: 'Ouch', jump_on_fire: true)
      expect(stuntman.fall_in_fire).to eq('Ouch')
      expect(stuntman.jump_on_fire).to be true
    end
  end

  context 'second edition' do
    it 'allows defined methods to be invoked-second edition' do
      stuntman = double('Mr. Danger')
      allow(stuntman).to receive(:fall_in_fire).and_return('Ouch')
      expect(stuntman.fall_in_fire).to eq('Ouch')
    end
  end

  context 'third edition' do
    it 'allows defined methods to be invoked-third edition' do
      stuntman = double('Mr. Danger')
      allow(stuntman).to receive_messages(fall_in_fire: 'Ouch', jump_on_fire: true)
      expect(stuntman.fall_in_fire).to eq('Ouch')
      expect(stuntman.jump_on_fire).to be true
    end
  end
end


RSpec.describe 'doubles-assignment' do
  it "tests the student's knowledge of the course's content" do
    db = double('Database Connection', connect: true, disconnect: 'Goodbye')
    expect(db.connect).to be true
    expect(db.disconnect).to eq('Goodbye')

    fs = double('File System')
    allow(fs).to receive_messages(read: 'Romeo and Juliet', write: false)
    expect(fs.read).to eq('Romeo and Juliet')
    expect(fs.write).to be false
  end
end
