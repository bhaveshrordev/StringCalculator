# spec/lib/string_calculator_spec.rb
require 'rails_helper'
require 'my_string_calculator'

RSpec.describe MyStringCalculator, type: :model do
  describe '#add' do
    it 'returns 0 for an empty string' do
      calculator = MyStringCalculator.new
      expect(calculator.add("")).to eq(0)
    end
  end
end