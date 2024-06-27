# String Calculator

This is a simple String Calculator implemented in Ruby using the Test-Driven Development (TDD) approach. The calculator can add numbers provided in a string format with various delimiters.

## Features

- Add numbers separated by commas or new lines.
- Support for custom delimiters.
- Raise an exception for negative numbers, listing all negative numbers in the exception message.

## Usage

### Method Signature

```ruby
def add(numbers)

calculator = MyStringCalculator.new

# Empty string
calculator.add("") # => 0

# Single number
calculator.add("1") # => 1

# Two numbers
calculator.add("1,2") # => 3

# Multiple numbers with commas
calculator.add("1,2,3,4") # => 10

# Numbers separated by new lines
calculator.add("1\n2,3") # => 6

# Custom delimiter
calculator.add("//;\n1;2") # => 3

# Raise exception for negative numbers
calculator.add("1,-2,-3") # => raises "negative numbers not allowed: -2,-3"

```

## Development Setup

### Prerequisites

- Ruby
- Rails
- Bundler

## Installation

1. Clone the repository

```bash
git clone https://github.com/bhaveshrordev/StringCalculator.git
cd StringCalculator
```

2. Install the required gems:

```bash
bundle install
```

## Running Test Cases

This project uses RSpec for testing. To run the tests, execute:

```bash
bundle exec rspec
```

## File Structure

* 'lib/my_string_calculator.rb': The implementation of the My String Calculator.
* 'spec/lib/my_string_calculator_spec.rb': The RSpec tests for the My String Calculator.

## Implementation Details

The MyStringCalculator class provides a method add that takes a string of numbers and returns their sum. The numbers can be separated by commas, new lines, or a custom delimiter specified at the beginning of the string.

## Handling Custom Delimiters

To specify a custom delimiter, the string should start with // followed by the delimiter and a newline. For example, "//;\n1;2" uses ; as the delimiter.


## Handling Negative Numbers

If the input string contains negative numbers, the add method raises an exception with a message listing all negative numbers.

## Test-Driven Development (TDD)

This project follows TDD principles, with tests written before the implementation. Each step of the implementation is driven by the corresponding test.