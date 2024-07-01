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
    check_for_negatives(nums)

    nums.sum
  end

  private

  def check_for_negatives(nums)
    negatives = nums.select { |n| n < 0 }
    raise NegativeNumberError.new(negatives) unless negatives.empty?
  end

end

class NegativeNumberError < StandardError
  def initialize(negatives)
    super("negative numbers not allowed: #{negatives.join(', ')}")
  end
end