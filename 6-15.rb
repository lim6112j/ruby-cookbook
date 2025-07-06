#!/usr/bin/env ruby
# frozen_string_literal: true

require 'pp'
h = { 'apple' => 'planet', 'ficus' => 'planet', 'shrew' => 'animal', 'pleasure' => 'animal' }
grepped = h.keys.grep(/p/)
pp grepped
result = h.each_with_object([]) do |kv, res|
  res << kv if kv[1] =~ /p/
  res
end
pp result
