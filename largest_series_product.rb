# frozen_string_literal: true

# Write your code for the 'Largest Series Product' exercise in this file. Make the tests in
# `largest_series_product_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/largest-series-product` directory.

class Series
  def initialize(string_of_digits)
    @string_of_digits = string_of_digits
  end

  def largest_product(substring_length)
    raise ArgumentError if @string_of_digits.length < substring_length
    raise ArgumentError if @string_of_digits.chars.any? { |char| ('a'..'z').include? char.downcase }

    digits_array = string_to_int_array(@string_of_digits)
    span_combinations = digits_array.each_cons(substring_length)
    multiplied_combinations = span_combinations.map do |consecutive_numbers|
      consecutive_numbers.inject(:*)
    end
    multiplied_combinations.max
  end

  def string_to_int_array(number_string)
    number_string.chars.map(&:to_i)
  end
end
