# frozen_string_literal: true

class CustomError < StandardError; end

RSpec.describe 'raise error matcher' do
  def some_method
    x
  end

  it 'checks for a specific error' do
    expect { some_method }.to raise_error(NameError)
    expect { 10 / 0 }.to raise_error(ZeroDivisionError)
  end

  it 'can check for a user-created error' do
    expect { raise CustomError }.to raise_error(CustomError)
  end
end
