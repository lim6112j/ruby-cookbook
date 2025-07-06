#!/usr/bin/env ruby
# frozen_string_literal: true

require 'pp'
text = 'The rain in Spain falls mainly in the plain.'
word_count_hash = Hash.new 0
text.split(/W+/).each { |word| word_count_hash[word.downcase] += 1 }
pp word_count_hash
