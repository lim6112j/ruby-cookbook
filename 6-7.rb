#!/usr/bin/env ruby
# frozen_string_literal: false

# “You want to iterate over a hash’s key-value pairs as though it were an array.”
hash = { 1 => 'one', 2 => 'two', 3 => 'three' }
hash.each_pair do |k, v|
  puts "#{k} is #{v}"
end
