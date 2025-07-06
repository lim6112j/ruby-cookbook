#!/usr/bin/env ruby
# frozen_string_literal: false

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
def histogram_to_pairs(histogram)
  histogram.keys.collect { |x| [x.to_s, histogram[x]] }.sort
end

def find_largest_key_size(pairs)
  pairs.max { |x, y| x[0].size <=> y[0].size }[0].size
end

def format_graph_line(key, value, key_size, char)
  "#{key.ljust(key_size)} |#{char * value}\n"
end

def draw_graph(histogram, char = '*')
  pairs = histogram_to_pairs(histogram)
  largest_key_size = find_largest_key_size(pairs)
  pairs.inject('') do |s, kv|
    s << format_graph_line(kv[0], kv[1], largest_key_size, char)
  end
end
puts draw_graph(survey_results.values.to_histogram)
random = []
100.times { random << rand(10) }
puts draw_graph(random.to_histogram)
