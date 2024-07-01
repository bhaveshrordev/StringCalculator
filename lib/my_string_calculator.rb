class MyStringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = /,|\n/
    if numbers.start_with?('//')
      parts = numbers.split("\n", 2)
      delimiter = Regexp.escape(parts.first[2])
      numbers = parts.last
    end

    nums = numbers.split(/#{delimiter}/).map(&:to_i)
    negatives = nums.select { |n| n < 0 }
    unless negatives.empty?
      raise NegativeNumberError.new(negatives)
    end

    nums.sum
  end
end


class NegativeNumberError < StandardError
  def initialize(negatives)
    super("negative numbers not allowed: #{negatives.join(', ')}")
  end
end