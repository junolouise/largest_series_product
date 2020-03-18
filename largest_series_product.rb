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
    if @string_of_digits.length == substring_length
      digits_array = @string_of_digits.chars.map(&:to_i)
      digits_array.inject(:*)
    end
  end
end
