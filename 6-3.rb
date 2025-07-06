#!/usr/bin/env ruby
# frozen_string_literal: false

require 'pp'
squares = [[1, 1], [2, 4], [3, 9]]
results = {}
squares.each { |[k, v]| results[k] = v }
pp results
