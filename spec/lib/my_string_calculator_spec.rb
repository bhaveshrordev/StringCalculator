require 'rails_helper'
require 'my_string_calculator'

RSpec.describe MyStringCalculator, type: :model do
  describe '#add' do
    it 'returns 0 for an empty string' do
      calculator = MyStringCalculator.new
      expect(calculator.add("")).to eq(0)
    end

    it 'returns the number for a single number string' do
      calculator = MyStringCalculator.new
      expect(calculator.add("1")).to eq(1)
    end

    it 'returns the sum of two numbers' do
      calculator = MyStringCalculator.new
      expect(calculator.add("1,2")).to eq(3)
    end

    it 'returns the sum of numbers separated by new lines' do
      calculator = MyStringCalculator.new
      expect(calculator.add("1\n2,3")).to eq(6)
    end
  end
end
