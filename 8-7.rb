#!/usr/bin/env ruby

module Enumerable
  def find_no_more_than(limit)
    each_with_object([]) do |e, a|
      a << e if yield e
      return a if a.size >= limit
    end
  end
end

a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
evens = a.find_no_more_than(3) { |x| x.even? }
puts a
puts evens
