# frozen_string_literal: true

require 'car'

RSpec.describe Car do
  subject { Car.new(company: 'BMW', model: 'mv206', price: 2000)}

  it { is_expected.to have_attributes(company: 'BMW') }
  it { is_expected.to have_attributes(model: 'mv206', price: 2000) }
end

RSpec.describe Car.new(company: 'Toyota') do
  it { is_expected.to have_attributes(company: 'Toyota') }
  it { is_expected.to have_attributes(model: nil) }
  it { is_expected.to have_attributes(price: 0) }
end
