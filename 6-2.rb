#!/usr/bin/env ruby
# frozen_string_literal: false

require 'pp'
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
