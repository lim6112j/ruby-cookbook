#!/usr/bin/env ruby
array = %w[bob loves alice]
reversed_array = array.to_enum(:reverse_each)
reversed_array.collect { |x| x.capitalize }
reversed_array.each_with_index do |x, i|
  puts "#{i}: #{x}"
end

sentence = %w[Well, now I've seen everything!]
two_word_window = sentence.to_enum(:each_cons, 2)
two_word_window.each { |x| puts x.inspect }
