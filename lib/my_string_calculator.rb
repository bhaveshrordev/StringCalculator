class MyStringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = /,|\n/

    numbers, delimiter = extract_custom_delimiter(numbers) if numbers.start_with?('//')

    nums = numbers.split(/#{delimiter}/).map(&:to_i)
    check_for_negatives(nums)

    nums.sum
  end

  private

  def extract_custom_delimiter(numbers)
    parts = numbers.split("\n", 2)
    custom_delimiter = parts.first[2]
    delimiter = Regexp.escape(custom_delimiter)
    [parts.last, delimiter]
  end

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