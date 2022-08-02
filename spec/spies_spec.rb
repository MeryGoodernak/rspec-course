# class Food
#   def eat
#     puts 'ate'
#   end

#   def drink
#     'drunk'
#   end
# end

# class Animal
#   def initialize(food)
#     @food = food
#   end

#   def eat_food
#     @food.eat
#   end
# end

RSpec.describe 'spies' do
  let(:animal) { Animal.new(food) }
  let(:food) { spy(Food) }

  it 'confirms that a message has been recieved' do
    animal.eat_food
    expect(food).to have_received(:eat)
  end
end
