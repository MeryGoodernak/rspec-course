require 'person'

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any methods' do
      person = double(a:'Hello!', b: 20)
      expect(person.a).to eq('Hello!')
    end
  end

  describe 'instance double' do
    it 'can only implement methods that are defined on the class' do
      person = instance_double(Person, greeting:'Hello!')
      expect(person.greeting).to eq('Hello!')
    end
  end
end
