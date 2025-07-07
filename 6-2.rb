#!/usr/bin/env ruby
# frozen_string_literal: false

require 'pp'
# creating hash with default value
h = Hash.new('nope')
pp "default value for any key : #{h['a']}" # "nope"
pp "default value for any key : #{h['b']}" # "knopek"
h = Hash.new { |_hash, key| key.respond_to?(:to_str) ? 'nope' : nil }
pp "Hash with Lambda : #{h['a']}" # []
pp "Hash with Lambda : #{h[1]}" # []
text = 'The rain in Spain falls mainly in the plain.'
word_count_hash = Hash.new 0
text.split(/\W+/).each { |word| word_count_hash[word.downcase] += 1 }
pp word_count_hash
pp text
first_letter_hash = Hash.new []
text.split(/\W+/).each do |word|
  first_letter_hash[word[0, 1].downcase] << word
end
pp first_letter_hash['a']
pp first_letter_hash
