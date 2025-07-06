#!/usr/bin/env ruby
# frozen_string_literal: true

# 6-12.rb - A Ruby script to convert an enumerable to a histogram
module Enumerable
  def to_histogram
    each_with_object(Hash.new(0)) do |x, h|
      h[x] += 1
    end
  end
end

puts [1, 2, 2, 2, 5, 5, 7, 8, 8, 8].to_histogram
