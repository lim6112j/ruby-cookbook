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
survey_results = { 'Alice' => :red, 'Bob' => :green, 'Carol' => :green,
                   'Mallory' => :blue }

puts [1, 2, 2, 2, 5, 5, 7, 8, 8, 8].to_histogram
def draw_graph(histogram, char = '*')
  pairs = histogram.keys.collect { |x| [x.to_s, histogram[x]] }.sort
  largest_key_size = pairs.max { |x, y| x[0].size <=> y[0].size }[0].size
  pairs.inject(0) do |s, kv|
    s << "#{kv[0].ljust(largest_key_size)} |#{char * kv[1]}\n"
  end
end
puts draw_graph(survey_results.values.to_histogram)
