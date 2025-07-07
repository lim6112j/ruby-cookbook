#!/usr/bin/env ruby
# frozen_string_literal: false

require 'pp'
squares = [[1, 1], [2, 4], [3, 9]]
results = {}
# Ruby automatic array destructuring is a feature where Ruby automatically
# unpacks array elements into multiple block parameters when you have
# more parameters than the number of arguments being passed.
# squares.each { |[k, v]| results[k] = v }
squares.each { |k, v| results[k] = v }
pp results

# The `into_hash` method is an extension to the Array class that allows
class Array
  def into_hash(arr)
    raise StandardError, 'Expected array with even number of elements' unless size.even?

    0.step(size - 1, 2) { |x| arr[self[x]] = self[x + 1] }
    arr
  end
end
sqr = [1, 1, 2, 3, 4, 9]
results2 = {}
pp sqr.into_hash(results2)
pp [1, 1, 2, 2].into_hash(results2)

pp results.merge!(results2)
