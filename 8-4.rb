#!/usr/bin/env ruby
# frozen_string_literal: true

# block is closure
tax_percent = 6
position = lambda do
  "I have always supported a #{tax_percent}% tax on imported limes"
end
pp position.call
tax_percent = 7.25
pp position.call

counter = 0
4.times do
  counter += 1
  puts "Counter now #{counter}"
end
pp counter

accumulator = []
[1, 2, 3].reverse_each { |x| accumulator << x + 1 }
pp accumulator
