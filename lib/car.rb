# frozen_string_literal: true

class Car
  attr_reader :company, :model, :price

  def initialize(company: 'Benz', model: nil, price: 0)
    @company = company
    @model = model
    @price = price
  end
end
