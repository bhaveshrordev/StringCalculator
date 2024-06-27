class MyStringCalculator
  def add(numbers)  
    return 0 if numbers.empty?

    delimiter = /,|\n/
    if numbers.start_with?('//')
      parts = numbers.split("\n", 2)
      delimiter = Regexp.escape(parts.first[2])
      numbers = parts.last
    end

    numbers.split(/#{delimiter}/).map(&:to_i).sum
  end
end